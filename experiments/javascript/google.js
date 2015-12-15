google.load('search', '1');

function searchComplete(searcher) {
    // Check that we got results
    if (searcher.results && searcher.results.length > 0) {
        // Grab our content div, clear it.
        var contentDiv = document.getElementById('extract_images');
        contentDiv.innerHTML = '';

        // Loop through our results, printing them to the page.
        var results = searcher.results;
        for (var i = 0; i < results.length; i++) {
            // For each result write it's title and image to the screen
            var result = results[i];
            var imgContainer = document.createElement('div');

            var title = document.createElement('h3');
            // We use titleNoFormatting so that no HTML tags are left in the title
            title.innerHTML = result.titleNoFormatting;

            var newImg = document.createElement('img');
            // There is also a result.url property which has the escaped version
            newImg.src = result.tbUrl;

            imgContainer.appendChild(title);
            imgContainer.appendChild(newImg);

            // Put our title + image in the content
            contentDiv.appendChild(imgContainer);
        }
    }
}

function OnLoad() {
    // Our ImageSearch instance.
    var imageSearch = new google.search.ImageSearch();

    // Restrict to extra large images only
    imageSearch.setRestriction(google.search.ImageSearch.RESTRICT_IMAGESIZE,
                         google.search.ImageSearch.IMAGESIZE_MEDIUM);


    imageSearch.setSearchCompleteCallback(this, searchComplete, [imageSearch]);
    imageSearch.setSiteRestriction();
    imageSearch.setResultSetSize(8);
    imageSearch.execute("pablo picasso");
}
google.setOnLoadCallback(OnLoad);