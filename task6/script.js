
  $(document).ready(function(){
    $(".navbar-toggler").click(function(){
      $("#navbarNav").toggleClass("show");
    });
  });




$(document).ready(function () {


    $.ajax({
        url: "get_logo.php",
        type: "GET",
        dataType: "json",
        success: function (data) {
            console.log('response:', data);
            $.each(data, function (index, value) {
                console.log(value);
                $('#logo').attr('src', "./upload/" + value);
            });
        }
    });

});
// menu item script

// Send AJAX request to fetch menu items
$.ajax({
    type: "GET",
    url: "fetchmenu.php",
    dataType: "json",
    success: function(data) {
        console.log('response:', data);
        $.each(data, function(index, item) {
            $("#menu-item").append(`
                <div class="col-md-4 mb-4 ">
                    <div class="card">
                        <img src="./upload/${item.menu_image}" class="card-img-top" alt="${item.name}">
                        <div class="card-body">
                            <h5 class="card-title">${item.name}</h5>
                            <p class="card-text">${item.description}</p>
                            <p class="card-text"><strong>$${item.price}</strong></p>
                        </div>
                    </div>
                </div>
            `);
        });
    }
});
//about
$(document).ready(function() {
    $.ajax({
        type: 'GET',
        url: 'fetch_about.php', 
        success: function(data) {
            $('#about-text').html(data);
        }
    });
});

//contact 

$(document).ready(function() {
    $.ajax({
        type: 'GET',
        url: 'fetch_contact_data.php', // your PHP file
        success: function(data) {
            var jsonData = JSON.parse(data);
            var contactInfoHtml = '';
            var socialLinksHtml = '';

            $.each(jsonData, function(index, value) {
                contactInfoHtml += `
                    <h5 style="font-weight :700;">Our Address : ${value.address} </h5>
                    
                    <h5 style="font-weight :700;">Phone: ${value.phone} </h5>
                   
                    <h5 style="font-weight :700;">Email: ${value.email} </h5>
                    
                    <h5 style="font-weight :700;">Website: ${value.website} </h5>
                
                `;

                socialLinksHtml += `
                <h5 style="font-weight :700;">Follow Us :</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="${value.facebook_link}" target="_blank" style="text-decoration: none; color: #3b5998;">
                            <i class="fab fa-facebook-square" style="font-size: 24px;"></i>
                            <span style="margin-left: 10px;">facebook</span>
                        </a>
                    </li>
                    <li>
                        <a href="${value.twitter_link}" target="_blank" style="text-decoration: none; color: #1da1f2;">
                            <i class="fab fa-twitter-square" style="font-size: 24px;"></i>
                            <span style="margin-left: 10px;">twitter</span>
                        </a>
                    </li>
                    <li>
                        <a href="${value.instagram_link}" target="_blank" style="text-decoration: none; color: #e1306c;">
                            <i class="fab fa-instagram-square" style="font-size: 24px;"></i>
                            <span style="margin-left: 10px;">instagram</span>
                        </a>
                    </li>
                </ul>
                `;
            });

            $('#contact-info').html(contactInfoHtml);
            $('#social-links').html(socialLinksHtml);
        }
    });
});
            