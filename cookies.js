function WHCheckCookies(){
      if(!localStorage.cookies_accepted) {
        var cookies_message = document.getElementById("cookies-message");
        cookies_message.style.display="block"
      } 
    }
    function WHCloseCookiesWindow(){
      localStorage.cookies_accepted = true;
      document.getElementById("cookies-message-container").removeChild(document.getElementById("cookies-message"));
    }
      
    window.onload = WHCheckCookies;