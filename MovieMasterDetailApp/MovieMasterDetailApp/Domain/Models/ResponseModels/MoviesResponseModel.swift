//
//  MoviesResponseModel.swift
//  MovieMasterDetailApp
//
//  Created by Muhammad Irfan Awan on 19/09/2024.
//

import Foundation

struct MoviesListResponse : Codable {
    let page : Int?
    let results : [MovieAttributes]?
    let total_pages : Int?
    let total_results : Int?

    enum CodingKeys: String, CodingKey {

        case page = "page"
        case results = "results"
        case total_pages = "total_pages"
        case total_results = "total_results"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        page = try values.decodeIfPresent(Int.self, forKey: .page)
        results = try values.decodeIfPresent([MovieAttributes].self, forKey: .results)
        total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
        total_results = try values.decodeIfPresent(Int.self, forKey: .total_results)
    }

}



struct MovieAttributes : Codable {
    let adult : Bool?
    let backdrop_path : String?
    let genre_ids : [Int]?
    let id : Int?
    let original_language : String?
    let original_title : String?
    let overview : String?
    let popularity : Double?
    let poster_path : String?
    let release_date : String?
    let title : String?
    let video : Bool?
    let vote_average : Double?
    let vote_count : Int?

    enum CodingKeys: String, CodingKey {

        case adult = "adult"
        case backdrop_path = "backdrop_path"
        case genre_ids = "genre_ids"
        case id = "id"
        case original_language = "original_language"
        case original_title = "original_title"
        case overview = "overview"
        case popularity = "popularity"
        case poster_path = "poster_path"
        case release_date = "release_date"
        case title = "title"
        case video = "video"
        case vote_average = "vote_average"
        case vote_count = "vote_count"
    }
    
    init(id : Int?, title : String?, video : Bool?, adult : Bool?, backdrop_path : String?, genre_ids : [Int]?, original_language : String?, original_title : String?, overview : String?, popularity : Double?, poster_path : String?, release_date : String?, vote_average : Double?, vote_count : Int?) {
        self.id = id
        self.title = title
        self.video = video
        self.adult = adult
        self.backdrop_path = backdrop_path
        self.genre_ids = genre_ids
        self.original_language = original_language
        self.original_title = original_title
        self.overview = overview
        self.popularity = popularity
        self.poster_path = poster_path
        self.release_date = release_date
        self.vote_average = vote_average
        self.vote_count = vote_count
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        adult = try values.decodeIfPresent(Bool.self, forKey: .adult)
        backdrop_path = try values.decodeIfPresent(String.self, forKey: .backdrop_path)
        genre_ids = try values.decodeIfPresent([Int].self, forKey: .genre_ids)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        original_language = try values.decodeIfPresent(String.self, forKey: .original_language)
        original_title = try values.decodeIfPresent(String.self, forKey: .original_title)
        overview = try values.decodeIfPresent(String.self, forKey: .overview)
        popularity = try values.decodeIfPresent(Double.self, forKey: .popularity)
        poster_path = try values.decodeIfPresent(String.self, forKey: .poster_path)
        release_date = try values.decodeIfPresent(String.self, forKey: .release_date)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        video = try values.decodeIfPresent(Bool.self, forKey: .video)
        vote_average = try values.decodeIfPresent(Double.self, forKey: .vote_average)
        vote_count = try values.decodeIfPresent(Int.self, forKey: .vote_count)
    }

}

struct MovieInfo {
    var title       :   String?
    var description :   String?
}
