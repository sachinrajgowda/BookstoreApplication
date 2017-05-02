<%-- 
    Document   : action_adventure
    Created on : Feb 27, 2016, 12:06:09 AM
    Author     : sachin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>action_and_adventure</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script>
            $(document).ready(function(){$("lessa").click(function(){$("#wa").css('visibility', 'hidden');$("showa").css('visibility', 'visible');});
            $("showa").click(function(){$("#wa").css('visibility', 'visible');$("showa").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessb").click(function(){$("#wb").css('visibility', 'hidden');$("showb").css('visibility', 'visible');});
            $("showb").click(function(){$("#wb").css('visibility', 'visible');$("showb").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessc").click(function(){$("#wc").css('visibility', 'hidden');$("showc").css('visibility', 'visible');});
            $("showc").click(function(){$("#wc").css('visibility', 'visible');$("showc").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessd").click(function(){$("#wd").css('visibility', 'hidden');$("showd").css('visibility', 'visible');});
            $("showd").click(function(){$("#wd").css('visibility', 'visible');$("showd").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lesse").click(function(){$("#we").css('visibility', 'hidden');$("showe").css('visibility', 'visible');});
            $("showe").click(function(){$("#we").css('visibility', 'visible');$("showe").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessf").click(function(){$("#wf").css('visibility', 'hidden');$("showf").css('visibility', 'visible');});
            $("showf").click(function(){$("#wf").css('visibility', 'visible');$("showf").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessg").click(function(){$("#wg").css('visibility', 'hidden');$("showg").css('visibility', 'visible');});
            $("showg").click(function(){$("#wg").css('visibility', 'visible');$("showg").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessh").click(function(){$("#wh").css('visibility', 'hidden');$("showh").css('visibility', 'visible');});
            $("showh").click(function(){$("#wh").css('visibility', 'visible');$("showh").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessi").click(function(){$("#wi").css('visibility', 'hidden');$("showi").css('visibility', 'visible');});
            $("showi").click(function(){$("#wi").css('visibility', 'visible');$("showi").css('visibility', 'hidden');});});
            $(document).ready(function(){$("lessj").click(function(){$("#wj").css('visibility', 'hidden');$("showj").css('visibility', 'visible');});
            $("showj").click(function(){$("#wj").css('visibility', 'visible');$("showj").css('visibility', 'hidden');});});
            
        </script>
        <style>
            table {
                border-collapse: collapse;
                width: 80%;
            }

            th, td {
                padding: 15px;
                text-align: left;
                border-top: 1px solid #e0ffff;
                border-bottom: 1px solid #e0ffff;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        <h1 align="center" style="font-weight: 400;font-size: 50px;font-family: Arial;color: #990066">Action & Adventure</h1>
        <br/>
        <table align="center">
            <tr>
                <td><img src="aa_page/aa_1.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">Lord of the Flies</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 399501487&emsp;&emsp;Publisher : Perigee Books</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;"> 
                        When "Lord of the Flies" appeared in 1954 it received unprecedented reviews for a first novel. 
                        Critics used such phrases as "beautifully writeen, tragic and provocative... vivid and enthralling... 
                        this beautiful and desperate book... completely convincing and often very frightening... 
                        its progress is magnificient... like a fragment of nightmare... a dizzy climax of terror...
                        <showa style="color:#afd9ee;font-size: 17px;">more</showa>               
                        <span id="wa" style="visibility:hidden;position: relative"> 
                        the terrible spell of this book..." E.M. Forster chose it as the Outstanding Novel of the Year. 
                        "Time and Tide" touched upon perhaps the most important facet of this book when it said, "It is not 
                        only a first-rate adventure but a parable of our times, " and articles on this and subsequent Golding
                        novels have stressed these twin aspects of Golding: a consummate control of the novel form, and a 
                        superb all-encompassing vision of reality which communicates itself with a power reminiscent of Conrad.
                        <lessa style="color:#afd9ee;font-size: 17px">less</lessa>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : William Golding</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 10 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="Lord of the Flies"/>
                        <input type="hidden" name="aa_isbn" value="399501487"/>
                        <input type="hidden" name="aa_author" value="William Golding"/>
                        <input type="hidden" name="aa_price" value="10"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>        
            </tr>
            <tr>
                <td><img src="aa_page/aa_2.jpg"></td>
              <td>
                  <p style="font-family: Arial; color: black; font-size: 35px;">The Killer Angels: The Classic Novel of the Civil War</p>
                  <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 345348109&emsp;&emsp;Publisher : Ballantine Books</p>
                  <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;">
                        "MY FAVORITE HISTORICAL NOVEL...A superb re-creation of the Battle of Gettysburg, but its 
                        real importance is its insight into what the war was about, and what it meant."--James M. McPherson, 
                        Author of Battle Cry of FreedomIn the four most bloody and courageous days of our nation's history, 
                        <showb style="color:#afd9ee;font-size: 17px;">more</showb>               
                        <span id="wb" style="visibility:hidden;position: relative"> 
                        two armies fought for two dreams. One dreamed of freedom, the other of a way of life.Far more than 
                        rifles and bullets were carried into battle. There were memories. There were promises. There was love. 
                        And far more than men fell on those Pennsylvania fields. Shattered futures, forgotten innocence, and crippled 
                        beauty were also the casualties of war.The Killer Angels is unique, sweeping, unforgettable--a dramatic re-creation 
                        of the battleground for America's destiny."REMARKABLE...A BOOK THAT CHANGED MY LIFE...I had never visited 
                        Gettysburg, knew almost nothing about that battle before I read the book, but here it all came alive."--Ken Burns, 
                        Filmmaker, The Civil War
                        <lessb style="color:#afd9ee;font-size: 17px">less</lessb>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : Michael Angels</i>
                </td>     
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 8 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="The Killer Angels: The Classic Novel of the Civil War"/>
                        <input type="hidden" name="aa_isbn" value="345348109"/>
                        <input type="hidden" name="aa_author" value="Michael Angels"/>
                        <input type="hidden" name="aa_price" value="8"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_3.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">American Gods</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 380789035&emsp;&emsp;Publisher : HarperTorch</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;">
                        Shadow is a man with a past. But now he wants nothing more than to live a quiet life with his wife 
                        and stay out of trouble. Until he learns that she's been killed in a terrible accident.Flying home
                        <showc style="color:#afd9ee;font-size: 17px;">more</showc>               
                        <span id="wc" style="visibility:hidden;position: relative"> 
                        for the funeral, as a violent storm rocks the plane, a strange man in the seat next to him introduces 
                        himself. The man calls himself Mr. Wednesday, and he knows more about Shadow than is possible.He warns 
                        Shadow that a far bigger storm is coming. And from that moment on, nothing will ever he the same...
                        <lessc style="color:#afd9ee;font-size: 17px">less</lessc>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : Neil Gaiman</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 4 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="American Gods"/>
                        <input type="hidden" name="aa_isbn" value="380789035"/>
                        <input type="hidden" name="aa_author" value="Neil Gaiman"/>
                        <input type="hidden" name="aa_price" value="4"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_4.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">The Chronicles of Narnia</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 0060598247&emsp;&emsp;Publisher : HarperCollins</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;"> 
                        Journeys to the end of the world, fantastic creatures, and epic battles between good and evil -- 
                        what more could any reader ask for in one book? The book that has it all is the lion, the witch 
                        and the wardrobe, written in 1949 by C. S. Lewis. But Lewis did not stop there. Six more books followed, 
                        and together they became known as The Chronicles of Narnia. For the past fifty years, The Chronicles of 
                        Narnia have transcended the fantasy genre to become part of the canon of classic literature. Each of the 
                        <showd style="color:#afd9ee;font-size: 17px;">more</showd>               
                        <span id="wd" style="visibility:hidden;position: relative"> 
                        seven books is a masterpiece, drawing the reader into a world where magic meets reality, and the result 
                        is a fictional world whose scope has fascinated generations. This edition presents all seven books -- 
                        unabridged -- in one impressive volume. The books are presented here according to Lewis's preferred order, 
                        each chapter graced with an illustration by the original artist, Pauline Baynes. This edition also contains 
                        C. S. Lewis's essay "On Three Ways of Writing for Children," in which he explains precisely how the magic of 
                        Narnia and the realm of fantasy appeal not only to children but to discerning readers of all ages. 
                        Deceptively simple and direct, The Chronicles of Narnia continue to captivate fans with adventures, 
                        characters, and truths that speak to all readers, even fifty years after the books were first published.
                        <lessd style="color:#afd9ee;font-size: 17px">less</lessd>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : C.S. Lewis</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 33 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="The Chronicles of Narnia"/>
                        <input type="hidden" name="aa_isbn" value="0060598247"/>
                        <input type="hidden" name="aa_author" value="C.S. Lewis"/>
                        <input type="hidden" name="aa_price" value="33"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_5.jpg"></td>
              <td>
                  <p style="font-family: Arial; color: black; font-size: 35px;">School's Out - Forever</p>
                  <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 316067962&emsp;&emsp;Publisher : Jimmy Patterson</p>
                  <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;"> 
                        Fourteen-year-old Maximum Ride and the other members of the "Flock"--Fang, Iggy, Nudge, Gasman and Angel--are 
                        just like ordinary kids--only they have wings and can fly. It seems like a dream come true--except that they're 
                        being hunted by half-human, half-wolf "Erasers" who can fly, too. In Book 2 of the series, the Flock members are 
                        taken under the wing of an FBI agent and try to live "normal" lives by going to school, making friends--and 
                        <showe style="color:#afd9ee;font-size: 17px;">more</showe>               
                        <span id="we" style="visibility:hidden;position: relative"> 
                        continuing their relentless search for their parents. But the Erasers return, forcing the Flock to abandon their 
                        search and make their escape once again. The voice inside Max's head keeps telling her that it's up to her to save 
                        the world, but this is especially challenging to do when she is faced with her ultimate match: a newer and better 
                        version of herself, Maximum Ride II. Max's heart-stopping quest to investigate the mind-blowing mystery of her 
                        ultimate destiny continues in the scariest, strangest, and funniest James Patterson novel yet.
                        <lesse style="color:#afd9ee;font-size: 17px">less</lesse>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : James Patterson</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 10 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="School's Out - Forever"/>
                        <input type="hidden" name="aa_isbn" value="316067962"/>
                        <input type="hidden" name="aa_author" value="James Patterson"/>
                        <input type="hidden" name="aa_price" value="10"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_6.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">A Feast for Crows: A Song of Ice and Fire</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 055358202X&emsp;&emsp;Publisher : Bantam</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;"> 
                        In the fourth novel in the epic fantasy series a song of ice and fire, the kingdom exists in a state of 
                        perilous equilibrium following the death of a monstrous king, a regent ruling in king's landing and few 
                        <showf style="color:#afd9ee;font-size: 17px;">more</showf>               
                        <span id="wf" style="visibility:hidden;position: relative"> 
                        claimants to the iron throne, until new conspiracies and alliances begin to erupt in the seven kingdoms.
                        <lessf style="color:#afd9ee;font-size: 17px">less</lessf>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : George R.R. Martin</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 12 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="A Feast for Crows: A Song of Ice and Fire"/>
                        <input type="hidden" name="aa_isbn" value="055358202X"/>
                        <input type="hidden" name="aa_author" value="George R.R. Martin"/>
                        <input type="hidden" name="aa_price" value="12"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_7.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">A Storm of Swords: A Song of Ice and Fire</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 055357342X&emsp;&emsp;Publisher : Bantam</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;"> 
                        A Game of Thrones got things off to a rock-solid start, A Clash of Kings only exceeded expectations, but it's the 
                        Storm of Swords hat trick that cements Martin's rep as the most praiseworthy fantasy author to come along 
                        since that other R.R. Like the first two books, A Storm of Swords could coast on the fundamentals: deftly 
                        <showg style="color:#afd9ee;font-size: 17px;">more</showg>               
                        <span id="wg" style="visibility:hidden;position: relative"> 
                        detailed characters, convincing voices and dialogue, a robust back-story, and a satisfyingly unpredictable 
                        plot. But it's Martin's consistently bold choices that set the series apart. Every character is fair game 
                        for the headman's axe (sometimes literally), and not only do the good guys regularly lose out to the bad guys,
                        you're never exactly sure who you should be cheering for in the first place. Storm is full of admirable intricacies.
                        Events that you thought Martin was setting up solidly for the first two books are exposed as complex feints; the 
                        field quickly narrows after the Battle of the Blackwater and once again, anything goes. Robb tries desperately to 
                        hold the North together, Jon returns from the wildling lands with a torn heart, Bran continues his quest for the 
                        three-eyed crow beyond the Wall, Catelyn struggles to save her fragile family, Arya becomes ever more wolflike in 
                        her wanderings, Daenerys comes into her own, and Joffrey's cruel rule from King's Landing continues, making even his 
                        fellow Lannisters uneasy. Martin tests all the major characters in A Storm of Swords: some fail the trial, while 
                        others--like Martin himself--seem to only get stronger.
                        <lessg style="color:#afd9ee;font-size: 17px">less</lessg>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : George R.R. Martin</i>
                </td>
                <td>
                    <h4 align="center" align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 10 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="A Storm of Swords: A Song of Ice and Fire"/>
                        <input type="hidden" name="aa_isbn" value="055357342X"/>
                        <input type="hidden" name="aa_author" value="George R.R. Martin"/>
                        <input type="hidden" name="aa_price" value="10"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_8.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">The Hitchhiker's Guide to the Galaxy</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 345391802&emsp;&emsp;Publisher : Del Rey</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;">
                        "IRRESISTIBLE!" --The Boston Globe Seconds before the Earth is demolished to make way for a galactic freeway,
                        Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The
                        Hitchhiker's Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor. 
                        Together this dynamic pair begin a journey through space aided by quotes from The Hitchhiker's Guide 
                        ("A towel is about the most massively useful thing an interstellar hitchhiker can have") and a galaxy-full 
                        <showh style="color:#afd9ee;font-size: 17px;">more</showh>               
                        <span id="wh" style="visibility:hidden;position: relative"> 
                        of fellow travelers: Zaphod Beeblebrox--the two-headed, three-armed ex-hippie and totally out-to-lunch 
                        president of the galaxy; Trillian, Zaphod's girlfriend (formally Tricia McMillan), whom Arthur tried to 
                        pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed 
                        robot; Veet Voojagig, a former graduate student who is obsessed with the disappearance of all the ballpoint 
                        pens he bought over the years. Where are these pens? Why are we born? Why do we die? Why do we spend so much 
                        time between wearing digital watches? For all the answers stick your thumb to the stars. And don't forget to 
                        bring a towel! "[A] WHIMSICAL ODYSSEY...Characters frolic through the galaxy with infectious joy."
                        <lessh style="color:#afd9ee;font-size: 17px">less</lessh>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : Douglas Adams</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 8 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="The Hitchhiker's Guide to the Galaxy"/>
                        <input type="hidden" name="aa_isbn" value="345391802"/>
                        <input type="hidden" name="aa_author" value="Douglas Adams"/>
                        <input type="hidden" name="aa_price" value="8"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_9.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">Life of Pi</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 156027321&emsp;&emsp;Publisher : Mariner Books</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;">
                        The son of a zookeeper, Pi Patel has an encyclopedic knowledge of animal behavior and a fervent love of 
                        stories. When Pi is sixteen, his family emigrates from India to North America aboard a Japanese cargo ship,
                        along with their zoo animals bound for new homes. The ship sinks. Pi finds himself alone in a lifeboat, his
                        only companions a hyena, an orangutan, a wounded zebra, and Richard Parker, a 450-pound Bengal tiger. Soon 
                        <showi style="color:#afd9ee;font-size: 17px;">more</showi>               
                        <span id="wi" style="visibility:hidden;position: relative"> 
                        the tiger has dispatched all but Pi, whose fear, knowledge, and cunning allow him to coexist with Richard 
                        Parker for 227 days while lost at sea. When they finally reach the coast of Mexico, Richard Parker flees 
                        to the jungle, never to be seen again. The Japanese authorities who interrogate Pi refuse to believe his 
                        story and press him to tell them "the truth." After hours of coercion, Pi tells a second story, a story much
                        less fantastical, much more conventional--but is it more true?
                        <lessi style="color:#afd9ee;font-size: 17px">less</lessi>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : Yann Martel</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 16 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="Life of Pi"/>
                        <input type="hidden" name="aa_isbn" value="156027321"/>
                        <input type="hidden" name="aa_author" value="Yann Martel"/>
                        <input type="hidden" name="aa_price" value="16"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td><img src="aa_page/aa_10.jpg"></td>
                <td>
                    <p style="font-family: Arial; color: black; font-size: 35px;">Harry Potter And The Order Of The Phoenix</p>
                    <p style="font-family: Arial; color: #afd9ee; font-size: 18px;">ISBN : 439358078&emsp;&emsp;Publisher : Scholastic Paperbacks</p>
                    <p align="justify" style="font-family: Arial; color: whitesmoke; font-size: 16px; width: 800px;">
                        The most eagerly anticipated book in history becomes the biggest paperback release of 2004! The book that 
                        took the world by storm.... In his fifth year at Hogwart's, Harry faces challenges at every turn, from the 
                        <showj style="color:#afd9ee;font-size: 17px;">more</showj>               
                        <span id="wj" style="visibility:hidden;position: relative"> 
                        dark threat of He-Who-Must-Not-Be- Named and the unreliability of the government of the magical world to the
                        rise of Ron Weasley as the keeper of the Gryffindor Quidditch Team. Along the way he learns about the 
                        strength of his friends, the fierceness of his enemies, and the meaning of sacrifice.
                        <lessj style="color:#afd9ee;font-size: 17px">less</lessj>
                        </span>         
                    </p>
                    <i style="font-family: Arial; color: #f7ecb5; font-size: 18px;">Author : J.K. Rowling</i>
                </td>
                <td>
                    <h4 align="center" style="color:white;font-size: 32px;font-weight: 300;font-family: Arial">Price: 13 $</h4>
                    <form align="center" action="cart_servlet" method="post">
                        <input type="hidden" name="aa_name" value="Harry Potter And The Order Of The Phoenix"/>
                        <input type="hidden" name="aa_isbn" value="439358078"/>
                        <input type="hidden" name="aa_author" value="J.K. Rowling"/>
                        <input type="hidden" name="aa_price" value="13"/>
                        <input type="text" name="aa_quantity" placeholder="quantity" style="margin-bottom:10px;padding:15px 15px; width:30%;border:none;border-radius: 10px;"/>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" value="Add to Cart" style="width: 100%;background-color: #4CAF50;color: white;padding: 15px 15px;border: none;border-radius: 10px;"/>
                    </form>
                </td>
            </tr>
        </table>
        <jsp:include page="footer.jsp" />
    </body>
</html>
