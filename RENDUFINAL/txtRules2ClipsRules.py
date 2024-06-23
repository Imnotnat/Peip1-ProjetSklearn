import re

def parse_rule(rule):
    # Extraire le nom de la règle
    rule_name = re.match(r'^\w+', rule).group(0)
    
    # Extraire la condition et l'action
    condition_part, action_part = re.search(r'if\s+\((.*)\)\s+then\s+class:\s+(\w+)', rule, re.IGNORECASE).groups()
    
    # Extraire le nom de la classe
    class_name = action_part.strip()
    
    # Diviser les conditions multiples avec "AND"
    conditions = re.split(r'\)\s+AND\s+\(', condition_part, flags=re.IGNORECASE)
    conditions = [condition.strip('()') for condition in conditions]  # Enlever les parenthèses
    
    # Construire la règle CLIPS
    clips_rule = f'(defrule {rule_name}\n  (Data '
    
    # Variable set pour éviter les doublons dans les slots
    variables = set()
    
    for condition in conditions:
        print(condition)
        print(re.match(r'([\w-]+)\s*(<=|>=|>|<|==)\s*([\d.]+)', condition))
        
        attribute, operator, value = re.match(r'([\w-]+)\s*(<=|>=|>|<|==)\s*([\d.]+)', condition).groups()
        variable = f'?{attribute}'
        if attribute not in variables:
            clips_rule += f'({attribute} {variable}) '
            variables.add(attribute)
    
    clips_rule = clips_rule.strip() + ')\n'
    
    # Ajouter le test combiné
    clips_rule += '  (test (and '
    for condition in conditions:
        
        attribute, operator, value = re.match(r'([\w-]+)\s*(<=|>=|>|<|==)\s*([\d.]+)', condition).groups()
        variable = f'?{attribute}'
        clips_rule += f'({operator} {variable} {value}) '
    clips_rule = clips_rule.strip() + '))\n'
    
    clips_rule += f'=>\n  (assert (class {class_name})))\n'
    
    return clips_rule

def convert_rules_to_clips(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            
            line = line.strip()
            if line:  # Ignore les lignes vides
                clips_rule = parse_rule(line)
                outfile.write(clips_rule + '\n')

# Exemple d'utilisation
input_file = './rules.txt'
output_file = './rules.clp'
convert_rules_to_clips(input_file, output_file)
