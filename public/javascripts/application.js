// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var curr_partner_page=1;
var curr_videolist_page = 1;
function partner_init()
{
    i=0;


    jQuery(".partner li").each(function(){
        if (i<4){

            jQuery(this).css("display","block")
        }
        else
        {
            jQuery(this).css("display","none")
        }
        i=i+1;
    })
    
}

function partner_prev()
{


    if (curr_partner_page!=1)
    {
        curr_partner_page=curr_partner_page-1;

        begin_partner_pos = (curr_partner_page-1)*4
        i=0;


        jQuery(".partner li").each(function(){
            if ((begin_partner_pos<=i) && (i<begin_partner_pos+4)) {

                jQuery(this).css("display","block")
            }
            else
            {
                jQuery(this).css("display","none")
            }
            i=i+1;
        })         
    }



}

function partner_next()
{

    partner_size = jQuery(".partner li").size();

    if (partner_size%4 == 0){
        partner_page_size = Math.floor(partner_size/4);
    }
    else
    {
        partner_page_size = Math.floor(partner_size/4) + 1;
    }

    if (curr_partner_page!=partner_page_size)
    {
        curr_partner_page=curr_partner_page+1;


        begin_partner_pos = (curr_partner_page-1)*4

 
        i=0;

        jQuery(".partner li").each(function(){
            if ((begin_partner_pos<=i) && (i<begin_partner_pos+4)) {

                jQuery(this).css("display","block")
            }
            else
            {
                jQuery(this).css("display","none")
            }
            i=i+1;
        })

        if (curr_partner_page==partner_page_size)
        {
            last_partner_page_size = partner_size - (partner_page_size-1)*4
            for(j=0;j<4-last_partner_page_size;j++)
            {
                jQuery(".partner").append("<li></li>");
            }
        }
    }

}

function videolist_init()
{
    k=0;


    jQuery(".videolistmid").each(function(){
        if (k<3){

            jQuery(this).css("display","block")
        }
        else
        {
            jQuery(this).css("display","none")
        }
        k=k+1;
    })
}

function videolist_prev()
{
    if (curr_videolist_page!=1)
    {
        curr_videolist_page = curr_videolist_page - 1;
        begin_videolist_pos = (curr_videolist_page-1)*3
        i=0;

        jQuery(".videolistmid").each(function(){
            if ((begin_videolist_pos<=i) && (i<begin_videolist_pos+3)) {

                jQuery(this).css("display","block")
            }
            else
            {
                jQuery(this).css("display","none")
            }
            i=i+1;
        })
    }
}

function videolist_next()
{
    videolist_size = jQuery(".videolistmid").size();

    if (videolist_size%3 == 0){
        videolist_page_size = Math.floor(videolist_size/3);
    }
    else
    {
        videolist_page_size = Math.floor(videolist_size/3) + 1;
    }

    if (curr_videolist_page!=videolist_page_size)
    {
        curr_videolist_page=curr_videolist_page+1;


        begin_videolist_pos = (curr_videolist_page-1)*3


        i=0;

        jQuery(".videolistmid").each(function(){
            if ((begin_videolist_pos<=i) && (i<begin_videolist_pos+3)) {

                jQuery(this).css("display","block")
            }
            else
            {
                jQuery(this).css("display","none")
            }
            i=i+1;
        })

    /*   if (curr_videolist_page==videolist_page_size)
        {
            last_videolist_page_size = videolist_size - (videolist_page_size-1)*4
            for(j=0;j<4-last_videolist_page_size;j++)
            {
                jQuery(".videolist").append("          <div class=\"videolistmid\"><ul><a href=\"#\"></a> <span><a href=\"#\"><img src=\"/images/video_play.gif\" width=\"18\" height=\"18\" border=\"0\" /></a></span></ul></div>");
            }
        }*/
    }
}
function keyval_check()
{
    keyval_str = jQuery("#keyval").val();
    keyval_str = jQuery.trim( keyval_str );
    if ((keyval_str == "") || (keyval_str == "请输入搜索关键字"))
    {
        alert("请输入搜索关键字");
        return false;
    }
    return true;
}

function   SaveAs5(downloadURL)
{
    var   oPop   =   window.open(downloadURL,"","width=1,   height=1,   top=5000,   left=5000");
    for(;   oPop.document.readyState   !=   "complete";   )
    {
        if   (oPop.document.readyState   ==   "complete")break;
    }
    oPop.document.execCommand("SaveAs");
    oPop.close();
} 
