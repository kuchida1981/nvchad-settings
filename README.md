# nvchad-settings

NvChadの自分用設定ファイルの管理リポジトリ。

## 使い方

リポジトリをインストール

```
git clone git@github.com:kuchida1981/nvchad-settings.git $HOME/.config/nvim
```

neovim を起動すると、NvChad本体と付随するプラグインがインストールされる。

pyenv でpythonをインストールする。

```
pyenv install 3.13.1
```

neovim用の仮想環境を作る。

```
pyenv virtualenv 3.13.1 neovim
```

neovim向けのパッケージをインストールする。

```
pyenv shell neovim
pip install pynvim
```

あとは、neovim を起動して、 `:checkhealth` を実行して
必要そうな設定を適宜おこなう。

---

**This repo is supposed to used as config by NvChad users!**
