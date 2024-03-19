# Tags
tags:
  afa_tribe: Finance&risk
  global-app: dryrun@0223
  global-dcs: Cloud Products
  global-cbp: A00447
  global-project: Public IAAS
  global-dataclass:  Internal ### first letter should be in upper 
  global-opco: afa

# Azure information
azure:
  location: westeurope

# Network information
network:
  subnet_exposure:   internal >>> it should be in lowercases
  subnet_routable:   "true" 

# Devops information
devops:
  resource_group_object_index: '01'
  short_app_name: dryrun  ## it should be in lowercases

# Environment information
environments:
  - name:   Integration  ### first letter should be in upper case
    index: '["01"]'
    spnId: ef148a1b-1b3c-466c-9d09-650530a2fa7b
    global-appserviceid: be33e6c01bf9dc58ba992f06bd4bcb3b
    network_app_spoke_name: shrdspknp 
    vms:
      - name: DAGA0235 ## first letter should be in upper case
        object_index: '001'
        vm_size: Standard_D2as_v4
        os_type: windows
        dr_serviceclass: Bronze 
        vm_backuppolicy: None 
        private_ip_address: '100.113.121.0' 
        migration_resource_group: z-afa-migrate-np01-ew1-01
        migration_os_snapshot_name: DAGA0235-OSdisk-00
        migration_data_snapshot_names: 
          - "DAGA0235-DATAdisk-00" 
      - name: DAGA2233
        object_index: '002'
        vm_size: Standard_D2as_v4
        os_type: Linux
        dr_serviceclass: Bronze 
        vm_backuppolicy: None 
        private_ip_address: '100.113.121.1' 
        migration_resource_group: z-afa-migrate-np01-ew1-01
        migration_os_snapshot_name: DAGA2233-OSdisk-00
        migration_data_snapshot_names: 
          - "DAGA2233-DATAdisk-00" 
          - "DAGA2233-DATAdisk-01"

 