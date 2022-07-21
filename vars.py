from IPy import IP


# nodes=['SMCA','SME','Admin UI','SMSM','Sandbox']
from collections import UserString
from random import shuffle

# Don't change below parameters in nodes
nodes=['CA','ZEN','Admin UI','Nanolog','Sandbox']   

# Configure nodes2 values for customized names
nodes2=['SMCA','SME','Admin UI','SMSM','Sandbox']
dns='8.8.8.8'
counter=0
# Configure management ip's below
mips=['4.1.1.9','4.1.1.10','4.1.1.11','4.1.1.12','4.1.1.14']

# Configure service ip's below
zensip= '4.1.1.21'
nanologsip= '4.1.1.22'

instances2=[['Central Authority','SMCA'],['User Interface','AdminUI'],['Nanolog','SMSM'],['Sandbox','Sandbox']]
# instances=['CA',"AdminUI",'SMSM','Sandbox']




data_center_name='new dc1'
provider_name='provider1'
country='ind'



def validateip():
    for i in mips:
        IP(i)
    IP(dns)
    IP(zensip)
    IP(nanologsip)