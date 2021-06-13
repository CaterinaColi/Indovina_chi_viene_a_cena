##possibili invitati####

Gianna = list("sesso"= "F","anni"= 60, "nazionalità" ="italiana", "vacanze" = "mare","vuole_viaggiare"=T)
Mauro = list("sesso"= "M", "anni"= 29,"nazionalità" ="brasiliana", "vacanze" = "montagna","vuole_viaggiare"=F)
Beatrice = list("sesso"= "F","anni"= 28, "nazionalità" ="spagnola", "vacanze" = "lago","vuole_viaggiare"=T)
Lina = list("sesso"= "F","anni"= 28, "nazionalità" ="francese", "vacanze" = "città","vuole_viaggiare"=T)
Roberto = list("sesso"= "F","anni"= 28, "nazionalità" ="portoghese", "vacanze" = "mare","vuole_viaggiare"=T)

##creaiamo una lista di candidati####
candidati = list("Gianna" = Gianna,"Mauro"=Mauro,"Beatrice"=Beatrice, "Lina"=Lina,"Roberto"=Roberto)

##scegliete il vostro candidato ideale####
candidato_ideale = list(
"sesso" = c("F","M"),
"anni"= c(27,28,29,30),
"nazionalità"= c("italiana","spagnola","portoghese"),
"vacanze" = c("mare","lago"))

##codice che ci aiuta a scegliere i nostri invitati####

invitati <- c()
for(candidato in 1:length(candidati)){
  if(candidati[[candidato]][['sesso']] %in% candidato_ideale$sesso){
    if(candidati[[candidato]][['anni']] %in% candidato_ideale$anni){
      if(candidati[[candidato]][['nazionalità']] %in% candidato_ideale$nazionalità){
        if(candidati[[candidato]][['vacanze']] %in% candidato_ideale$vacanze){
          
          
          invitati <- c(invitati,(names(candidati[candidato])))
          
        }
      }
    }
    
    
  }
  
}


##Grafico a torta delle persone che verranno invitate a cena####

pie(x= rep(1,length(invitati)), labels= invitati,col = rainbow(5))


