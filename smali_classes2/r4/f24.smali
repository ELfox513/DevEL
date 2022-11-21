.class public final Lr4/f24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Camera:MotionPhoto"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GCamera:MotionPhoto"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Camera:MicroVideo"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "GCamera:MicroVideo"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lr4/f24;->a:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Camera:MotionPhotoPresentationTimestampUs"

    aput-object v1, v0, v3

    const-string v1, "GCamera:MotionPhotoPresentationTimestampUs"

    aput-object v1, v0, v4

    const-string v1, "Camera:MicroVideoPresentationTimestampUs"

    aput-object v1, v0, v5

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    aput-object v1, v0, v6

    sput-object v0, Lr4/f24;->b:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Camera:MicroVideoOffset"

    aput-object v1, v0, v3

    const-string v1, "GCamera:MicroVideoOffset"

    aput-object v1, v0, v4

    sput-object v0, Lr4/f24;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lr4/b24;
    .locals 22

    const-string v0, "x:xmpmeta"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/StringReader;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v2, v0}, Lr4/mc;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v4

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "rdf:Description"

    invoke-static {v2, v8}, Lr4/mc;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v3, Lr4/f24;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_b

    aget-object v9, v3, v7

    invoke-static {v2, v9}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_b

    sget-object v3, Lr4/f24;->b:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v9, v3, v7

    invoke-static {v2, v9}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_3

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-wide v7, v4

    :cond_3
    sget-object v3, Lr4/f24;->c:[Ljava/lang/String;

    :goto_3
    const/4 v9, 0x2

    if-ge v6, v9, :cond_5

    aget-object v9, v3, v6

    invoke-static {v2, v9}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v3, Lr4/a24;

    const-string v16, "image/jpeg"

    const-string v17, "Primary"

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lr4/a24;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v6, Lr4/a24;

    const-string v11, "video/mp4"

    const-string v12, "MotionPhoto"

    const-wide/16 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lr4/a24;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v3, v6}, Lr4/o33;->s(Ljava/lang/Object;Ljava/lang/Object;)Lr4/o33;

    move-result-object v3

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v3

    :goto_4
    move-wide v6, v7

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const-string v8, "Container:Directory"

    invoke-static {v2, v8}, Lr4/mc;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v3, "Container"

    const-string v8, "Item"

    invoke-static {v2, v3, v8}, Lr4/f24;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lr4/o33;

    move-result-object v3

    goto :goto_5

    :cond_8
    const-string v8, "GContainer:Directory"

    invoke-static {v2, v8}, Lr4/mc;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v3, "GContainer"

    const-string v8, "GContainerItem"

    invoke-static {v2, v3, v8}, Lr4/f24;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lr4/o33;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-static {v2, v0}, Lr4/mc;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Lr4/b24;

    invoke-direct {v0, v6, v7, v3}, Lr4/b24;-><init>(JLjava/util/List;)V

    move-object v1, v0

    :cond_b
    :goto_6
    return-object v1

    :cond_c
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v0, v1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lr4/l6; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lr4/o33;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lr4/o33<",
            "Lr4/a24;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lr4/o33;->E()Lr4/l33;

    move-result-object v0

    const-string v1, ":Item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":Directory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, v1}, Lr4/mc;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ":Mime"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":Semantic"

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":Length"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":Padding"

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v3}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v4}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v5}, Lr4/mc;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_4

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lr4/a24;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_2
    move-wide v9, v5

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_1

    :cond_3
    move-wide v11, v5

    :goto_1
    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lr4/a24;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v4}, Lr4/l33;->f(Ljava/lang/Object;)Lr4/l33;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    invoke-static {p0, p1}, Lr4/mc;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lr4/l33;->g()Lr4/o33;

    move-result-object p0

    return-object p0
.end method
