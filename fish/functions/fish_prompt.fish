function fish_prompt
	
  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined
    function _git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end
	
    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l magenta (set_color -o magenta)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l cwd $blue(pwd)
  set -l arrow "$magenta> "

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$blue($git_branch$blue)"

    if [ (_is_git_dirty) ]
      set -l dirty "$cyan *"
      set git_info "$git_info$dirty"
    end
  end


  echo $cwd $git_info 
  if [ $DOCKER_HOST ]
    echo "$magenta$DOCKER_HOST"
  end
  echo -n -s $arrow $normal
end
