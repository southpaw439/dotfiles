 # Enable Powerlevel10k instant prompt (keep at top)                                                                                                                 
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then                                                                              
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"                                                                                       
  fi                                                                                                                                                                  
                                                                                                                                                                      
  # Path to oh-my-zsh                                                                                                                                                 
  export ZSH="$HOME/.oh-my-zsh"                                                                                                                                       
                                                                                                                                                                      
  # Theme                                                                                                                                                             
  ZSH_THEME="powerlevel10k/powerlevel10k"                                                                                                                             
                                                                                                                                                                      
  # Plugins                                                                                                                                                           
  plugins=(                                                                                                                                                           
    git                                                                                                                                                               
    z                                                                                                                                                                 
    zsh-autosuggestions                                                                                                                                               
    zsh-syntax-highlighting                                                                                                                                           
    globalias                                                                                                                                                         
  )                                                                                                                                                                   
                                                                                                                                                                      
  source $ZSH/oh-my-zsh.sh                                                                                                                                            
                                                                                                                                                                      
  # Homebrew                                                                                                                                                          
  eval "$(/opt/homebrew/bin/brew shellenv)"                                                                                                                           
                                                                                                                                                                      
  # Editor
  export EDITOR='code'

  # Local-only secrets (not committed). See ~/.zshrc.local
  [ -f ~/.zshrc.local ] && source ~/.zshrc.local

  # ---- Aliases ----                                                                                                                                                 
                                                                                                                                                                      
  # Shell                                                                                                                                                             
  alias szrc="source ~/.zshrc"                                                                                                                                        
  alias zrc="code ~/.zshrc"                                                                                                                                           
                                                                                                                                                                      
  # Navigation                                                                                                                                                        
  alias ..="cd .."                                                                                                                                                    
  alias ...="cd ../.."                                                                                                                                                
  alias desk="cd ~/Desktop"                                                                                                                                           
  alias docs="cd ~/Documents"                                                                                                                                         
  alias code="cd ~/Documents/code"                                                                                                                                                
  alias dl="cd ~/Downloads"                                                                                                                                           
                                                                                                                                                                      
  # Git                                                                                                                                                               
  alias gs="git status"                                                                                                                                               
  alias ga="git add"                                                                                                                                                  
  alias gaa="git add -A"                                                                                                                                              
  alias gc="git commit -m"                                                                                                                                            
  alias gp="git push"                                                                                                                                                 
  alias gpl="git pull"                                                                                                                                                
  alias gco="git checkout"                                                                                                                                            
  alias gcb="git checkout -b"                                                                                                                                         
  alias gb="git branch"                                                                                                                                               
  alias gd="git diff"                                                                                                                                                 
  alias gl="git log --oneline -10"                                                                                                                                    
  alias gst="git stash"                                                                                                                                               
  alias gstp="git stash pop"                                                                                                                                          
                                                                                                                                                                      
  # Node/npm                                                                                                                                                          
  alias ni="npm install"                                                                                                                                              
  alias nid="npm install --save-dev"                                                                                                                                  
  alias nr="npm run"                                                                                                                                                  
  alias nrd="npm run dev"                                                                                                                                             
  alias nrb="npm run build"                                                                                                                                           
  alias nrt="npm run test"                                                                                                                                            
  alias nrs="npm start"                                                                                                                                               
                                                                                                                                                                      
  # Common                                                                                                                                                            
  alias c="clear"                                                                                                                                                     
  alias grep='grep --color=auto'                                                                                                                                      
  alias ls='ls -G'                                                                                                                                                    
  alias ll='ls -laF'                                                                                                                                                  
  alias la='ls -A'                                                                                                                                                    
                                                                                                                                                                      
  # Powerlevel10k config                                                                                                                                              
  [[ ! -f ~/dotfiles/p10k.zsh ]] || source ~/dotfiles/p10k.zsh 
alias pickle="cd ~/Documents/code/pickles-travel"
