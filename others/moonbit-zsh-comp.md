# Zsh:

ZSH completions are commonly stored in any directory listed in your `$fpath` variable. 
To use these completions, you must either add the generated script to one of those directories, or add your own to this list.

Adding a custom directory is often the safest bet if you are unsure of which directory to use. 
First create the directory; for this example we'll create a hidden directory inside our `$HOME` directory:

```shell
mkdir ~/.zfunc
```

Then add the following lines to your `.zshrc` just before `compinit`:

```shell
fpath+=~/.zfunc
```

Now you can install the completions script using the following command:

```shell
moon shell-completion --shell zsh > ~/.zfunc/_moon
```

You must then open a new zsh session, or simply run

```shell
. ~/.zshrc
```

