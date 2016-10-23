library(devtools)
install_github("Rfacebook", "pablobarbera", subdir="Rfacebook")

library(Rfacebook)

fb_oauth <- fbOAuth(app_id = '1205157882877654', 
                  app_secret = 'b08a64048bedc73b1bf9137ddf4fb163',
                 extended_permissions = FALSE)



save(fb_oauth,file= "fb_oauth")

load("fb_oauth")

me <- getUsers("me", token = fb_oauth)

my_likes <- getLikes(user = "me",token = fb_oauth)

View(my_likes)


me$id
#narendra modi 
fb_page <- getPage(page=177526890164, token=fb_oauth, n=1000,
                   since='2016/10/01', until='2016/10/23')
View(fb_page)

search_groups <- searchGroup("analytics",token = fb_oauth)
View(search_groups)

search_page <- searchPages("virat",token = fb_oauth)
View(search_page)
