#! /bin/bash
apt update -y; apt install -y curl gcc wget git; 
wget https://go.dev/dl/go1.19.2.linux-amd64.tar.gz; 
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.2.linux-amd64.tar.gz;
echo "export PATH=$PATH:/usr/local/go/bin:/root/go/bin" >> ~/.bashrc; 
source ~/.bashrc;
# go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest; 
# go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest; 
# go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest; 
# go install github.com/tomnomnom/meg@latest; 
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest;
go install github.com/OJ/gobuster/v3@latest;
go install github.com/ffuf/ffuf@latest;
# git clone https://github.com/danielmiessler/SecLists.git /root/seclist/;
apt install -y zsh; sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --skip-chsh --unattended"; 
cp dan-omz.zsh-theme ~/.oh-my-zsh/themes/dan-omz.zsh-theme;
chsh -s /usr/bin/zsh; sed -i 's/robbyrussell/dan-omz/g' ~/.zshrc; 
echo "export PATH=$PATH:/usr/local/go/bin:/root/go/bin" >> ~/.zshrc;
source ~/.zshrc;
