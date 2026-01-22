                                                                                                                                                                      
  #!/bin/bash                                                                                                                                                         
                                                                                                                                                                      
  echo "Setting up your Mac..."                                                                                                                                       
                                                                                                                                                                      
  # Install Homebrew if not installed                                                                                                                                 
  if ! command -v brew &> /dev/null; then                                                                                                                             
      echo "Installing Homebrew..."                                                                                                                                   
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"                                                                 
      eval "$(/opt/homebrew/bin/brew shellenv)"                                                                                                                       
  fi                                                                                                                                                                  
                                                                                                                                                                      
  # Install packages from Brewfile                                                                                                                                    
  echo "Installing packages from Brewfile..."                                                                                                                         
  brew bundle --file=~/dotfiles/Brewfile                                                                                                                              
                                                                                                                                                                      
  # Install oh-my-zsh if not installed                                                                                                                                
  if [ ! -d "$HOME/.oh-my-zsh" ]; then                                                                                                                                
      echo "Installing oh-my-zsh..."                                                                                                                                  
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended                                                 
  fi                                                                                                                                                                  
                                                                                                                                                                      
  # Install powerlevel10k                                                                                                                                             
  if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then                                                                                     
      echo "Installing powerlevel10k..."                                                                                                                              
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k                                    
  fi                                                                                                                                                                  
                                                                                                                                                                      
  # Install zsh plugins                                                                                                                                               
  if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then                                                                              
      git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions                                   
  fi                                                                                                                                                                  
                                                                                                                                                                      
  if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then                                                                          
      git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting                       
  fi                                                                                                                                                                  
                                                                                                                                                                      
  # Create symlinks                                                                                                                                                   
  echo "Creating symlinks..."                                                                                                                                         
  ln -sf ~/dotfiles/zshrc ~/.zshrc                                                                                                                                    
  ln -sf ~/dotfiles/gitconfig ~/.gitconfig                                                                                                                            
  ln -sf ~/dotfiles/gitconfig-work ~/.gitconfig-work                                                                                                                  
                                                                                                                                                                      
  echo ""                                                                                                                                                             
  echo "Done! Next steps:"                                                                                                                                            
  echo "1. Set iTerm2 font to 'JetBrainsMono Nerd Font'"                                                                                                              
  echo "2. In iTerm2 Settings > General > Settings, load prefs from ~/dotfiles"                                                                                       
  echo "3. Restart terminal"   
