.class public Lmediabrowser/model/querying/ItemQuery;
.super Ljava/lang/Object;
.source "ItemQuery.java"


# instance fields
.field private AirDays:[Ljava/lang/String;

.field private AiredDuringSeason:Ljava/lang/Integer;

.field private AlbumArtistIds:[Ljava/lang/String;

.field private AlbumArtistStartsWithOrGreater:Ljava/lang/String;

.field private ArtistIds:[Ljava/lang/String;

.field private Artists:[Ljava/lang/String;

.field private CollapseBoxSetItems:Ljava/lang/Boolean;

.field private ContributingArtistIds:[Ljava/lang/String;

.field private EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private EnableImages:Ljava/lang/Boolean;

.field private EnableTotalRecordCount:Z

.field private ExcludeItemTypes:[Ljava/lang/String;

.field private ExcludeLocationTypes:[Lmediabrowser/model/entities/LocationType;

.field private Fields:[Lmediabrowser/model/querying/ItemFields;

.field private Filters:[Lmediabrowser/model/querying/ItemFilter;

.field private GenreIds:[Ljava/lang/String;

.field private Genres:[Ljava/lang/String;

.field private GroupItemsIntoCollections:Ljava/lang/Boolean;

.field private HasParentalRating:Ljava/lang/Boolean;

.field private Ids:[Ljava/lang/String;

.field private ImageTypeLimit:Ljava/lang/Integer;

.field private ImageTypes:[Lmediabrowser/model/entities/ImageType;

.field private IncludeIndexContainers:Z

.field private IncludeItemTypes:[Ljava/lang/String;

.field private Is3D:Ljava/lang/Boolean;

.field private Is4K:Ljava/lang/Boolean;

.field private IsHD:Ljava/lang/Boolean;

.field private IsInBoxSet:Ljava/lang/Boolean;

.field private IsMissing:Ljava/lang/Boolean;

.field private IsPlayed:Ljava/lang/Boolean;

.field private IsUnaired:Ljava/lang/Boolean;

.field private IsVirtualUnaired:Ljava/lang/Boolean;

.field private Limit:Ljava/lang/Integer;

.field private ListItemIds:[Ljava/lang/String;

.field private LocationTypes:[Lmediabrowser/model/entities/LocationType;

.field private MaxOfficialRating:Ljava/lang/String;

.field private MaxPlayers:Ljava/lang/Integer;

.field private MaxPremiereDate:Ljava/util/Date;

.field private MediaTypes:[Ljava/lang/String;

.field private MinCommunityRating:Ljava/lang/Double;

.field private MinCriticRating:Ljava/lang/Double;

.field private MinIndexNumber:Ljava/lang/Integer;

.field private MinOfficialRating:Ljava/lang/String;

.field private MinPlayers:Ljava/lang/Integer;

.field private MinPremiereDate:Ljava/util/Date;

.field private NameLessThan:Ljava/lang/String;

.field private NameStartsWith:Ljava/lang/String;

.field private NameStartsWithOrGreater:Ljava/lang/String;

.field private OfficialRatings:[Ljava/lang/String;

.field private ParentId:Ljava/lang/String;

.field private ParentIndexNumber:Ljava/lang/Integer;

.field private Person:Ljava/lang/String;

.field private PersonIds:[Ljava/lang/String;

.field private PersonTypes:[Ljava/lang/String;

.field private Recursive:Z

.field private SearchTerm:Ljava/lang/String;

.field private SeriesStatuses:[Lmediabrowser/model/entities/SeriesStatus;

.field private SortBy:[Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private StartIndex:Ljava/lang/Integer;

.field private StudioIds:[Ljava/lang/String;

.field private Studios:[Ljava/lang/String;

.field private TagIds:[Ljava/lang/String;

.field private UserId:Ljava/lang/String;

.field private VideoTypes:[Lmediabrowser/model/entities/VideoType;

.field private Years:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->StartIndex:Ljava/lang/Integer;

    .line 60
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Limit:Ljava/lang/Integer;

    .line 135
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    .line 195
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Is3D:Ljava/lang/Boolean;

    .line 503
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinIndexNumber:Ljava/lang/Integer;

    .line 518
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->HasParentalRating:Ljava/lang/Boolean;

    .line 533
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsHD:Ljava/lang/Boolean;

    .line 548
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Is4K:Ljava/lang/Boolean;

    .line 563
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ParentIndexNumber:Ljava/lang/Integer;

    .line 578
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinPlayers:Ljava/lang/Integer;

    .line 593
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MaxPlayers:Ljava/lang/Integer;

    .line 698
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsMissing:Ljava/lang/Boolean;

    .line 713
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsUnaired:Ljava/lang/Boolean;

    .line 723
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    .line 733
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsInBoxSet:Ljava/lang/Boolean;

    .line 743
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->CollapseBoxSetItems:Ljava/lang/Boolean;

    .line 753
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->GroupItemsIntoCollections:Ljava/lang/Boolean;

    .line 763
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsPlayed:Ljava/lang/Boolean;

    .line 788
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinCommunityRating:Ljava/lang/Double;

    .line 797
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinCriticRating:Ljava/lang/Double;

    .line 807
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->AiredDuringSeason:Ljava/lang/Integer;

    .line 817
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinPremiereDate:Ljava/util/Date;

    .line 827
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MaxPremiereDate:Ljava/util/Date;

    .line 837
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->EnableImages:Ljava/lang/Boolean;

    .line 846
    iput-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ImageTypeLimit:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 920
    new-array v1, v0, [Lmediabrowser/model/entities/LocationType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setLocationTypes([Lmediabrowser/model/entities/LocationType;)V

    .line 921
    new-array v1, v0, [Lmediabrowser/model/entities/LocationType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setExcludeLocationTypes([Lmediabrowser/model/entities/LocationType;)V

    .line 923
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 925
    new-array v1, v0, [Lmediabrowser/model/querying/ItemFilter;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    .line 927
    new-array v1, v0, [Lmediabrowser/model/querying/ItemFields;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 929
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setMediaTypes([Ljava/lang/String;)V

    .line 931
    new-array v1, v0, [Lmediabrowser/model/entities/VideoType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setVideoTypes([Lmediabrowser/model/entities/VideoType;)V

    const/4 v1, 0x1

    .line 933
    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    .line 935
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setArtists([Ljava/lang/String;)V

    .line 936
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setStudios([Ljava/lang/String;)V

    .line 938
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setGenres([Ljava/lang/String;)V

    .line 939
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setStudioIds([Ljava/lang/String;)V

    .line 940
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 941
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setExcludeItemTypes([Ljava/lang/String;)V

    .line 942
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setYears([Ljava/lang/String;)V

    .line 943
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setPersonTypes([Ljava/lang/String;)V

    .line 944
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setIds([Ljava/lang/String;)V

    .line 945
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setArtistIds([Ljava/lang/String;)V

    .line 946
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setPersonIds([Ljava/lang/String;)V

    .line 948
    new-array v1, v0, [Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setImageTypes([Lmediabrowser/model/entities/ImageType;)V

    .line 949
    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setAirDays([Ljava/lang/String;)V

    .line 950
    new-array v1, v0, [Lmediabrowser/model/entities/SeriesStatus;

    invoke-virtual {p0, v1}, Lmediabrowser/model/querying/ItemQuery;->setSeriesStatuses([Lmediabrowser/model/entities/SeriesStatus;)V

    .line 951
    new-array v0, v0, [Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/ItemQuery;->setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V

    return-void
.end method


# virtual methods
.method public final getAirDays()[Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->AirDays:[Ljava/lang/String;

    return-object v0
.end method

.method public final getAiredDuringSeason()Ljava/lang/Integer;
    .locals 1

    .line 810
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->AiredDuringSeason:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAlbumArtistIds()[Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->AlbumArtistIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumArtistStartsWithOrGreater()Ljava/lang/String;
    .locals 1

    .line 656
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->AlbumArtistStartsWithOrGreater:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistIds()[Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ArtistIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getArtists()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Artists:[Ljava/lang/String;

    return-object v0
.end method

.method public final getCollapseBoxSetItems()Ljava/lang/Boolean;
    .locals 1

    .line 746
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->CollapseBoxSetItems:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getContributingArtistIds()[Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ContributingArtistIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 858
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getEnableImages()Ljava/lang/Boolean;
    .locals 1

    .line 840
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->EnableImages:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getEnableTotalRecordCount()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Lmediabrowser/model/querying/ItemQuery;->EnableTotalRecordCount:Z

    return v0
.end method

.method public final getExcludeItemTypes()[Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ExcludeItemTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getExcludeLocationTypes()[Lmediabrowser/model/entities/LocationType;
    .locals 1

    .line 781
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ExcludeLocationTypes:[Lmediabrowser/model/entities/LocationType;

    return-object v0
.end method

.method public final getFields()[Lmediabrowser/model/querying/ItemFields;
    .locals 1

    .line 168
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-object v0
.end method

.method public final getFilters()[Lmediabrowser/model/querying/ItemFilter;
    .locals 1

    .line 153
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-object v0
.end method

.method public final getGenreIds()[Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->GenreIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getGenres()[Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Genres:[Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupItemsIntoCollections()Ljava/lang/Boolean;
    .locals 1

    .line 756
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->GroupItemsIntoCollections:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasParentalRating()Ljava/lang/Boolean;
    .locals 1

    .line 521
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->HasParentalRating:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIds()[Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Ids:[Ljava/lang/String;

    return-object v0
.end method

.method public final getImageTypeLimit()Ljava/lang/Integer;
    .locals 1

    .line 849
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageTypes()[Lmediabrowser/model/entities/ImageType;
    .locals 1

    .line 416
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-object v0
.end method

.method public final getIncludeIndexContainers()Z
    .locals 1

    .line 671
    iget-boolean v0, p0, Lmediabrowser/model/querying/ItemQuery;->IncludeIndexContainers:Z

    return v0
.end method

.method public final getIncludeItemTypes()[Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IncludeItemTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getIs3D()Ljava/lang/Boolean;
    .locals 1

    .line 198
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Is3D:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIs4K()Ljava/lang/Boolean;
    .locals 1

    .line 551
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Is4K:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsHD()Ljava/lang/Boolean;
    .locals 1

    .line 536
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsHD:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsInBoxSet()Ljava/lang/Boolean;
    .locals 1

    .line 736
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsInBoxSet:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsMissing()Ljava/lang/Boolean;
    .locals 1

    .line 701
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsMissing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsPlayed()Ljava/lang/Boolean;
    .locals 1

    .line 766
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsPlayed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsUnaired()Ljava/lang/Boolean;
    .locals 1

    .line 716
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsUnaired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsVirtualUnaired()Ljava/lang/Boolean;
    .locals 1

    .line 726
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getListItemIds()[Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ListItemIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationTypes()[Lmediabrowser/model/entities/LocationType;
    .locals 1

    .line 686
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->LocationTypes:[Lmediabrowser/model/entities/LocationType;

    return-object v0
.end method

.method public final getMaxOfficialRating()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MaxOfficialRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxPlayers()Ljava/lang/Integer;
    .locals 1

    .line 596
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MaxPlayers:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMaxPremiereDate()Ljava/util/Date;
    .locals 1

    .line 830
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MaxPremiereDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getMediaTypes()[Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MediaTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMinCommunityRating()Ljava/lang/Double;
    .locals 1

    .line 791
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinCommunityRating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getMinCriticRating()Ljava/lang/Double;
    .locals 1

    .line 800
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinCriticRating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getMinIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 506
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinOfficialRating()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinOfficialRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinPlayers()Ljava/lang/Integer;
    .locals 1

    .line 581
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinPlayers:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinPremiereDate()Ljava/util/Date;
    .locals 1

    .line 820
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->MinPremiereDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getNameLessThan()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->NameLessThan:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameStartsWith()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->NameStartsWith:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameStartsWithOrGreater()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->NameStartsWithOrGreater:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfficialRatings()[Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->OfficialRatings:[Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ParentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIndexNumber()Ljava/lang/Integer;
    .locals 1

    .line 566
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->ParentIndexNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPerson()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Person:Ljava/lang/String;

    return-object v0
.end method

.method public final getPersonIds()[Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->PersonIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getPersonTypes()[Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->PersonTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRecursive()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lmediabrowser/model/querying/ItemQuery;->Recursive:Z

    return v0
.end method

.method public final getSearchTerm()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->SearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeriesStatuses()[Lmediabrowser/model/entities/SeriesStatus;
    .locals 1

    .line 446
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->SeriesStatuses:[Lmediabrowser/model/entities/SeriesStatus;

    return-object v0
.end method

.method public final getSortBy()[Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->SortBy:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 138
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getStartIndex()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->StartIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStudioIds()[Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->StudioIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getStudios()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Studios:[Ljava/lang/String;

    return-object v0
.end method

.method public final getTagIds()[Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->TagIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoTypes()[Lmediabrowser/model/entities/VideoType;
    .locals 1

    .line 213
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->VideoTypes:[Lmediabrowser/model/entities/VideoType;

    return-object v0
.end method

.method public final getYears()[Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lmediabrowser/model/querying/ItemQuery;->Years:[Ljava/lang/String;

    return-object v0
.end method

.method public final setAirDays([Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->AirDays:[Ljava/lang/String;

    return-void
.end method

.method public final setAiredDuringSeason(Ljava/lang/Integer;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->AiredDuringSeason:Ljava/lang/Integer;

    return-void
.end method

.method public final setAlbumArtistIds([Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->AlbumArtistIds:[Ljava/lang/String;

    return-void
.end method

.method public final setAlbumArtistStartsWithOrGreater(Ljava/lang/String;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->AlbumArtistStartsWithOrGreater:Ljava/lang/String;

    return-void
.end method

.method public final setArtistIds([Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ArtistIds:[Ljava/lang/String;

    return-void
.end method

.method public final setArtists([Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Artists:[Ljava/lang/String;

    return-void
.end method

.method public final setCollapseBoxSetItems(Ljava/lang/Boolean;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->CollapseBoxSetItems:Ljava/lang/Boolean;

    return-void
.end method

.method public final setContributingArtistIds([Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ContributingArtistIds:[Ljava/lang/String;

    return-void
.end method

.method public final setEnableImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->EnableImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setEnableImages(Ljava/lang/Boolean;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->EnableImages:Ljava/lang/Boolean;

    return-void
.end method

.method public final setEnableTotalRecordCount(Z)V
    .locals 0

    .line 912
    iput-boolean p1, p0, Lmediabrowser/model/querying/ItemQuery;->EnableTotalRecordCount:Z

    return-void
.end method

.method public final setExcludeItemTypes([Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ExcludeItemTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setExcludeLocationTypes([Lmediabrowser/model/entities/LocationType;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ExcludeLocationTypes:[Lmediabrowser/model/entities/LocationType;

    return-void
.end method

.method public final setFields([Lmediabrowser/model/querying/ItemFields;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Fields:[Lmediabrowser/model/querying/ItemFields;

    return-void
.end method

.method public final setFilters([Lmediabrowser/model/querying/ItemFilter;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Filters:[Lmediabrowser/model/querying/ItemFilter;

    return-void
.end method

.method public final setGenreIds([Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->GenreIds:[Ljava/lang/String;

    return-void
.end method

.method public final setGenres([Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Genres:[Ljava/lang/String;

    return-void
.end method

.method public final setGroupItemsIntoCollections(Ljava/lang/Boolean;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->GroupItemsIntoCollections:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHasParentalRating(Ljava/lang/Boolean;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->HasParentalRating:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIds([Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Ids:[Ljava/lang/String;

    return-void
.end method

.method public final setImageTypeLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ImageTypeLimit:Ljava/lang/Integer;

    return-void
.end method

.method public final setImageTypes([Lmediabrowser/model/entities/ImageType;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ImageTypes:[Lmediabrowser/model/entities/ImageType;

    return-void
.end method

.method public final setIncludeIndexContainers(Z)V
    .locals 0

    .line 675
    iput-boolean p1, p0, Lmediabrowser/model/querying/ItemQuery;->IncludeIndexContainers:Z

    return-void
.end method

.method public final setIncludeItemTypes([Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IncludeItemTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setIs3D(Ljava/lang/Boolean;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Is3D:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIs4K(Ljava/lang/Boolean;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Is4K:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsHD(Ljava/lang/Boolean;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IsHD:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsInBoxSet(Ljava/lang/Boolean;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IsInBoxSet:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsMissing(Ljava/lang/Boolean;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IsMissing:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsPlayed(Ljava/lang/Boolean;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IsPlayed:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsUnaired(Ljava/lang/Boolean;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IsUnaired:Ljava/lang/Boolean;

    return-void
.end method

.method public final setIsVirtualUnaired(Ljava/lang/Boolean;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->IsVirtualUnaired:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setListItemIds([Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ListItemIds:[Ljava/lang/String;

    return-void
.end method

.method public final setLocationTypes([Lmediabrowser/model/entities/LocationType;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->LocationTypes:[Lmediabrowser/model/entities/LocationType;

    return-void
.end method

.method public final setMaxOfficialRating(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MaxOfficialRating:Ljava/lang/String;

    return-void
.end method

.method public final setMaxPlayers(Ljava/lang/Integer;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MaxPlayers:Ljava/lang/Integer;

    return-void
.end method

.method public final setMaxPremiereDate(Ljava/util/Date;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MaxPremiereDate:Ljava/util/Date;

    return-void
.end method

.method public final setMediaTypes([Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MediaTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setMinCommunityRating(Ljava/lang/Double;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MinCommunityRating:Ljava/lang/Double;

    return-void
.end method

.method public final setMinCriticRating(Ljava/lang/Double;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MinCriticRating:Ljava/lang/Double;

    return-void
.end method

.method public final setMinIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MinIndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setMinOfficialRating(Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MinOfficialRating:Ljava/lang/String;

    return-void
.end method

.method public final setMinPlayers(Ljava/lang/Integer;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MinPlayers:Ljava/lang/Integer;

    return-void
.end method

.method public final setMinPremiereDate(Ljava/util/Date;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->MinPremiereDate:Ljava/util/Date;

    return-void
.end method

.method public final setNameLessThan(Ljava/lang/String;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->NameLessThan:Ljava/lang/String;

    return-void
.end method

.method public final setNameStartsWith(Ljava/lang/String;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->NameStartsWith:Ljava/lang/String;

    return-void
.end method

.method public final setNameStartsWithOrGreater(Ljava/lang/String;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->NameStartsWithOrGreater:Ljava/lang/String;

    return-void
.end method

.method public final setOfficialRatings([Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->OfficialRatings:[Ljava/lang/String;

    return-void
.end method

.method public final setParentId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ParentId:Ljava/lang/String;

    return-void
.end method

.method public final setParentIndexNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->ParentIndexNumber:Ljava/lang/Integer;

    return-void
.end method

.method public final setPerson(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 902
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Person:Ljava/lang/String;

    return-void
.end method

.method public final setPersonIds([Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->PersonIds:[Ljava/lang/String;

    return-void
.end method

.method public final setPersonTypes([Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->PersonTypes:[Ljava/lang/String;

    return-void
.end method

.method public final setRecursive(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lmediabrowser/model/querying/ItemQuery;->Recursive:Z

    return-void
.end method

.method public final setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->SearchTerm:Ljava/lang/String;

    return-void
.end method

.method public final setSeriesStatuses([Lmediabrowser/model/entities/SeriesStatus;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->SeriesStatuses:[Lmediabrowser/model/entities/SeriesStatus;

    return-void
.end method

.method public final setSortBy([Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->SortBy:[Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setStartIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->StartIndex:Ljava/lang/Integer;

    return-void
.end method

.method public final setStudioIds([Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->StudioIds:[Ljava/lang/String;

    return-void
.end method

.method public final setStudios([Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Studios:[Ljava/lang/String;

    return-void
.end method

.method public final setTagIds([Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->TagIds:[Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->UserId:Ljava/lang/String;

    return-void
.end method

.method public final setVideoTypes([Lmediabrowser/model/entities/VideoType;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->VideoTypes:[Lmediabrowser/model/entities/VideoType;

    return-void
.end method

.method public final setYears([Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lmediabrowser/model/querying/ItemQuery;->Years:[Ljava/lang/String;

    return-void
.end method
