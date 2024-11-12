# Run the installimage tool with the specified configuration
installimage \
  
  # Set the hostname to "NamedNodeServer"
  # Replace with desired hostname
  -n NamedNodeServer \                         
  
  # Configure RAID level 0 for performance (striping across drives)
  -r 0 \                                       
  
  # Specify the OS image to install (Ubuntu 22.04 in this case)
  -i images/Ubuntu-2204-jammy-amd64-base.tar.gz \
  
  # Dynamically select all NVMe drives (e.g., nvme0n1, nvme1n1) for RAID
  -d 'nvme*n1' \
  
  # Define partition layout:
  # - /boot partition with ext3 filesystem, 1 GB size
  # - Root (/) partition with ext4 filesystem, using all remaining space
  # - Swap partition of 128 GB
  -p /boot:ext3:1024M,/::ext4:all,swap:swap:128G \
  
  # Bypass confirmation prompts for a fully unattended installation
  --force
