$(function() {
    console.log(window.location);
    $('.fans_count').click(function(){
        $('.folders_list').hide();
        $('.follow_list').hide();
        $('.purse_list').hide();
        $('.fans_list').show();
        $('.nav_link li').removeClass('active');
    })
    $('.follow_count').click(function(){
        $('.folders_list').hide();
        $('.fans_list').hide();
        $('.purse_list').hide();
        $('.follow_list').show();
        $('.nav_link li').removeClass('active');
    })
    
    $('.nav_link li').click(function(){
        var name = $(this).data('name');
        $(this).siblings().removeClass('active');
        $(this).addClass('active');
        if(name == 'folder'){
            $('.folders_list').show();
            $('.fans_list').hide();
            $('.follow_list').hide();
            $('.purse_list').hide();
        }else if(name == "purse"){
            $('.purse_list').show();
            $('.folders_list').hide();
            $('.follow_list').hide();
            $('.fans_list').hide();
        }
    })

    
})

function showPayOptions(){
    $('#rechargeModal').modal({show:true}); 
    $('.recharge_select').show();
    $('.pay').hide();
}
//支付
function pay(){
    $('.recharge_select').hide();
    $('.pay').show();
 }