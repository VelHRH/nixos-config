let
  colors = import ../theme;
in
''
    * {
        font-family: "JetBrains Mono";
        font-weight: bold;
    }
    #window {
        border-radius: 40px;
        background: #${colors.background};
    }
    #input {
        border-radius: 100px;
        margin: 20px;
        padding: 15px 25px;
        background: #${colors.background};
        color: #${colors.primary-pale};
    }
    #outer-box {
        font-weight: bold;
        font-size: 14px;
    }
    #entry {
        margin: 10px 80px;
        padding: 20px 20px;
        border-radius: 200px;
    }
    #entry:selected{
        background-color:#${colors.primary};
        color: #${colors.background};
    }
    #entry:hover {
    }
''