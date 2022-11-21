.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field public static final e:[B

.field public static final f:[S

.field public static final g:[C

.field public static final h:[B

.field public static final i:[B

.field public static final j:[S

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/utils/JsonValue;

.field public d:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->c()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->e:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->g()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->f:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->k()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->g:[C

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->i()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->h:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->h()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->i:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->e()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->j:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->f()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->k:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->l()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->l:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->j()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->m:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->d()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->n:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static c()[B
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method public static d()[B
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static e()[S
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method public static f()[B
    .locals 1

    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1dt
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x22t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x37t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3ct
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method public static g()[S
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method public static h()[B
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static i()[B
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method public static j()[B
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static k()[C
    .locals 1

    const/16 v0, 0xb9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method public static l()[B
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->c:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->c:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_3

    iput-object p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    iget p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public m(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public n(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->c:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v1, "Error reading stream."

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 5

    const/16 v0, 0x400

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v3, :cond_1

    :try_start_1
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error reading input."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v0, 0x4

    new-array v4, v0, [I

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    move-object v10, v4

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v4, p2

    :goto_0
    const-string v8, "null"

    const-string v0, "false"

    const-string v7, "true"

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    if-eq v11, v9, :cond_1

    const/4 v9, 0x2

    if-eq v11, v9, :cond_0

    const/4 v9, 0x4

    if-eq v11, v9, :cond_36

    goto/16 :goto_2f

    :cond_0
    move/from16 v21, v6

    move-object v6, v10

    goto/16 :goto_25

    :cond_1
    const/4 v9, 0x4

    goto :goto_1

    :cond_2
    const/4 v9, 0x4

    if-ne v4, v3, :cond_3

    const/4 v0, 0x4

    const/4 v11, 0x4

    goto :goto_0

    :cond_3
    if-nez v12, :cond_4

    goto/16 :goto_26

    :cond_4
    :goto_1
    :try_start_0
    sget-object v11, Lcom/badlogic/gdx/utils/JsonReader;->f:[S

    aget-short v11, v11, v12

    sget-object v18, Lcom/badlogic/gdx/utils/JsonReader;->j:[S

    aget-short v18, v18, v12

    sget-object v20, Lcom/badlogic/gdx/utils/JsonReader;->h:[B

    aget-byte v20, v20, v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_b

    if-lez v20, :cond_8

    add-int v21, v11, v20

    add-int/lit8 v22, v21, -0x1

    move/from16 v9, v22

    move/from16 v22, v13

    move v13, v11

    :goto_2
    if-ge v9, v13, :cond_5

    add-int v18, v18, v20

    move/from16 v11, v21

    goto :goto_3

    :cond_5
    sub-int v23, v9, v13

    const/16 v19, 0x1

    shr-int/lit8 v23, v23, 0x1

    add-int v23, v13, v23

    move/from16 v24, v9

    :try_start_1
    aget-char v9, v2, v4

    sget-object v25, Lcom/badlogic/gdx/utils/JsonReader;->g:[C

    move/from16 v26, v13

    aget-char v13, v25, v23
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v9, v13, :cond_6

    add-int/lit8 v9, v23, -0x1

    move/from16 v13, v26

    goto :goto_2

    :cond_6
    if-le v9, v13, :cond_7

    add-int/lit8 v13, v23, 0x1

    move/from16 v9, v24

    goto :goto_2

    :cond_7
    sub-int v23, v23, v11

    add-int v18, v18, v23

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_30

    :cond_8
    move/from16 v22, v13

    :goto_3
    :try_start_2
    sget-object v9, Lcom/badlogic/gdx/utils/JsonReader;->i:[B

    aget-byte v9, v9, v12

    if-lez v9, :cond_c

    shl-int/lit8 v12, v9, 0x1

    add-int/2addr v12, v11

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    move v13, v11

    :goto_4
    if-ge v12, v13, :cond_9

    add-int v18, v18, v9

    goto :goto_6

    :cond_9
    sub-int v20, v12, v13

    const/16 v19, 0x1

    shr-int/lit8 v20, v20, 0x1

    and-int/lit8 v20, v20, -0x2

    add-int v20, v13, v20

    move/from16 v21, v9

    aget-char v9, v2, v4

    sget-object v23, Lcom/badlogic/gdx/utils/JsonReader;->g:[C
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b

    move/from16 v24, v4

    :try_start_3
    aget-char v4, v23, v20

    if-ge v9, v4, :cond_a

    add-int/lit8 v12, v20, -0x2

    :goto_5
    move/from16 v9, v21

    move/from16 v4, v24

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v20, 0x1

    aget-char v4, v23, v4

    if-le v9, v4, :cond_b

    add-int/lit8 v13, v20, 0x2

    goto :goto_5

    :cond_b
    sub-int v20, v20, v11

    const/4 v4, 0x1

    shr-int/lit8 v9, v20, 0x1

    add-int v18, v18, v9

    goto :goto_7

    :cond_c
    :goto_6
    move/from16 v24, v4

    :goto_7
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->k:[B

    aget-byte v4, v4, v18

    sget-object v9, Lcom/badlogic/gdx/utils/JsonReader;->l:[B

    aget-byte v9, v9, v4

    sget-object v11, Lcom/badlogic/gdx/utils/JsonReader;->m:[B

    aget-byte v4, v11, v4

    if-eqz v4, :cond_34

    sget-object v11, Lcom/badlogic/gdx/utils/JsonReader;->e:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v11, v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_a

    move/from16 v13, v22

    move/from16 v11, v24

    :goto_8
    add-int/lit8 v18, v4, -0x1

    if-lez v4, :cond_33

    :try_start_4
    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->e:[B

    add-int/lit8 v20, v12, 0x1

    aget-byte v4, v4, v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    packed-switch v4, :pswitch_data_0

    :cond_d
    :goto_9
    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    goto/16 :goto_24

    :pswitch_0
    add-int/lit8 v11, v11, 0x1

    move v4, v11

    const/4 v12, 0x0

    :cond_e
    :try_start_5
    aget-char v13, v2, v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v14, 0x22

    if-eq v13, v14, :cond_10

    const/16 v14, 0x5c

    if-eq v13, v14, :cond_f

    :goto_a
    const/4 v13, 0x1

    goto :goto_b

    :cond_f
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    goto :goto_a

    :goto_b
    add-int/2addr v4, v13

    if-ne v4, v3, :cond_e

    :cond_10
    add-int/lit8 v4, v4, -0x1

    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    move v13, v11

    move v14, v12

    :goto_c
    move v11, v4

    goto/16 :goto_24

    :pswitch_1
    const/16 v4, 0xd

    if-eqz v15, :cond_17

    move v13, v11

    const/4 v14, 0x0

    :cond_11
    :try_start_6
    aget-char v12, v2, v13

    move/from16 v16, v14

    const/16 v14, 0xa

    if-eq v12, v14, :cond_16

    if-eq v12, v4, :cond_16

    const/16 v14, 0x2f

    if-eq v12, v14, :cond_13

    const/16 v14, 0x3a

    if-eq v12, v14, :cond_16

    const/16 v14, 0x5c

    if-eq v12, v14, :cond_12

    goto :goto_d

    :cond_12
    const/4 v14, 0x1

    goto :goto_e

    :cond_13
    add-int/lit8 v12, v13, 0x1

    if-ne v12, v3, :cond_14

    goto :goto_d

    :cond_14
    aget-char v12, v2, v12
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    const/16 v14, 0x2f

    if-eq v12, v14, :cond_16

    const/16 v14, 0x2a

    if-ne v12, v14, :cond_15

    goto :goto_f

    :cond_15
    :goto_d
    move/from16 v14, v16

    :goto_e
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v3, :cond_11

    goto :goto_13

    :cond_16
    :goto_f
    move/from16 v14, v16

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v6, v0

    move v4, v13

    goto/16 :goto_31

    :cond_17
    move v12, v11

    const/4 v13, 0x0

    :goto_10
    :try_start_7
    aget-char v14, v2, v12

    move/from16 v16, v13

    const/16 v13, 0xa

    if-eq v14, v13, :cond_1d

    if-eq v14, v4, :cond_1d

    const/16 v13, 0x2c

    if-eq v14, v13, :cond_1d

    const/16 v13, 0x2f

    if-eq v14, v13, :cond_19

    const/16 v13, 0x7d

    if-eq v14, v13, :cond_1d

    const/16 v13, 0x5c

    if-eq v14, v13, :cond_18

    const/16 v4, 0x5d

    if-eq v14, v4, :cond_1d

    goto :goto_11

    :cond_18
    const/16 v16, 0x1

    goto :goto_11

    :cond_19
    const/16 v13, 0x5c

    add-int/lit8 v4, v12, 0x1

    if-ne v4, v3, :cond_1a

    goto :goto_11

    :cond_1a
    aget-char v4, v2, v4
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    const/16 v14, 0x2f

    if-eq v4, v14, :cond_1d

    const/16 v14, 0x2a

    if-ne v4, v14, :cond_1b

    goto :goto_12

    :cond_1b
    :goto_11
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v3, :cond_1c

    goto :goto_12

    :cond_1c
    move/from16 v13, v16

    const/16 v4, 0xd

    goto :goto_10

    :cond_1d
    :goto_12
    move v13, v12

    goto :goto_f

    :goto_13
    add-int/lit8 v13, v13, -0x1

    move v4, v13

    :goto_14
    :try_start_8
    aget-char v12, v2, v4

    invoke-static {v12}, Ljava/lang/Character;->isSpace(C)Z

    move-result v12

    if-eqz v12, :cond_1e

    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    :cond_1e
    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    move v13, v11

    const/16 v16, 0x1

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v6, v0

    move v4, v12

    goto/16 :goto_31

    :pswitch_2
    add-int/lit8 v4, v11, 0x1

    aget-char v11, v2, v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_20

    :goto_15
    if-eq v4, v3, :cond_1f

    aget-char v11, v2, v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v12, 0xa

    if-eq v11, v12, :cond_1f

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_1f
    add-int/lit8 v4, v4, -0x1

    move v11, v4

    goto/16 :goto_9

    :cond_20
    :goto_16
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v3, :cond_22

    :try_start_9
    aget-char v12, v2, v4
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    move/from16 v22, v4

    const/16 v4, 0x2a

    if-ne v12, v4, :cond_21

    goto :goto_17

    :cond_21
    const/16 v4, 0x2f

    goto :goto_18

    :catch_3
    move-exception v0

    move/from16 v22, v4

    goto/16 :goto_30

    :cond_22
    move/from16 v22, v4

    const/16 v4, 0x2a

    :goto_17
    :try_start_a
    aget-char v12, v2, v11
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    const/16 v4, 0x2f

    if-eq v12, v4, :cond_d

    :goto_18
    move v4, v11

    goto :goto_16

    :catch_4
    move-exception v0

    move-object v6, v0

    move/from16 v4, v22

    goto/16 :goto_31

    :pswitch_3
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->o()V

    add-int/lit8 v6, v6, -0x1

    aget v12, v10, v6

    goto :goto_1a

    :pswitch_4
    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_23

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_19

    :cond_23
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->p(Ljava/lang/String;)V

    array-length v0, v10

    if-ne v6, v0, :cond_24

    array-length v0, v10

    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v4, v10

    const/4 v7, 0x0

    invoke-static {v10, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    :cond_24
    add-int/lit8 v0, v6, 0x1

    aput v9, v10, v6

    const/16 v12, 0x17

    move v6, v0

    goto :goto_1a

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->o()V

    add-int/lit8 v6, v6, -0x1

    aget v12, v10, v6

    :goto_1a
    move v4, v11

    const/4 v0, 0x4

    const/4 v11, 0x2

    goto/16 :goto_0

    :pswitch_6
    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_25

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1b

    :cond_25
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->q(Ljava/lang/String;)V

    array-length v0, v10

    if-ne v6, v0, :cond_26

    array-length v0, v10

    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v7, v10

    const/4 v8, 0x0

    invoke-static {v10, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    goto :goto_1c

    :cond_26
    const/4 v4, 0x2

    :goto_1c
    add-int/lit8 v0, v6, 0x1

    aput v9, v10, v6

    move v6, v0

    move v4, v11

    const/4 v0, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x5

    goto/16 :goto_0

    :pswitch_7
    const/4 v4, 0x2

    new-instance v12, Ljava/lang/String;

    sub-int v4, v11, v13

    invoke-direct {v12, v2, v13, v4}, Ljava/lang/String;-><init>([CII)V

    if-eqz v14, :cond_27

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/utils/JsonReader;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_27
    if-eqz v15, :cond_28

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    const/4 v15, 0x0

    goto/16 :goto_23

    :cond_28
    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v4, :cond_29

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1d

    :cond_29
    const/4 v4, 0x0

    :goto_1d
    if-eqz v16, :cond_31

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2a

    const/4 v12, 0x1

    invoke-virtual {v1, v4, v12}, Lcom/badlogic/gdx/utils/JsonReader;->b(Ljava/lang/String;Z)V

    :goto_1e
    move/from16 v21, v6

    :goto_1f
    move/from16 v23, v9

    move-object v6, v10

    goto/16 :goto_23

    :cond_2a
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    const/4 v12, 0x0

    invoke-virtual {v1, v4, v12}, Lcom/badlogic/gdx/utils/JsonReader;->b(Ljava/lang/String;Z)V

    goto :goto_1e

    :cond_2b
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2c

    move/from16 v21, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/utils/JsonReader;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_2c
    move/from16 v21, v6

    const/4 v6, 0x0

    const/16 v16, 0x1

    :goto_20
    if-ge v13, v11, :cond_2f

    move/from16 v22, v6

    aget-char v6, v2, v13
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    move/from16 v23, v9

    const/16 v9, 0x2b

    if-eq v6, v9, :cond_2e

    const/16 v9, 0x45

    if-eq v6, v9, :cond_2d

    const/16 v9, 0x65

    if-eq v6, v9, :cond_2d

    const/16 v9, 0x2d

    if-eq v6, v9, :cond_2e

    const/16 v9, 0x2e

    if-eq v6, v9, :cond_2d

    packed-switch v6, :pswitch_data_1

    const/16 v16, 0x0

    const/16 v22, 0x0

    goto :goto_22

    :cond_2d
    const/4 v6, 0x1

    const/16 v16, 0x0

    goto :goto_21

    :cond_2e
    :pswitch_8
    move/from16 v6, v22

    :goto_21
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v23

    goto :goto_20

    :cond_2f
    move/from16 v22, v6

    move/from16 v23, v9

    :goto_22
    if-eqz v22, :cond_30

    move-object v6, v10

    :try_start_c
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v1, v4, v9, v10, v12}, Lcom/badlogic/gdx/utils/JsonReader;->m(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_23

    :cond_30
    move-object v6, v10

    if-eqz v16, :cond_32

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v1, v4, v9, v10, v12}, Lcom/badlogic/gdx/utils/JsonReader;->n(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_23

    :cond_31
    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    :catch_5
    :cond_32
    :try_start_d
    invoke-virtual {v1, v4, v12}, Lcom/badlogic/gdx/utils/JsonReader;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    :goto_23
    move v13, v11

    const/16 v16, 0x0

    goto :goto_24

    :pswitch_9
    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    const/4 v15, 0x1

    :goto_24
    move-object v10, v6

    move/from16 v4, v18

    move/from16 v12, v20

    move/from16 v6, v21

    move/from16 v9, v23

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move-object v6, v0

    move v4, v11

    goto/16 :goto_31

    :cond_33
    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    move v4, v11

    move/from16 v12, v23

    goto :goto_25

    :cond_34
    move/from16 v21, v6

    move/from16 v23, v9

    move-object v6, v10

    move/from16 v13, v22

    move/from16 v12, v23

    move/from16 v4, v24

    :goto_25
    if-nez v12, :cond_35

    move-object v10, v6

    move/from16 v6, v21

    :goto_26
    const/4 v0, 0x4

    const/4 v11, 0x5

    goto/16 :goto_0

    :cond_35
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v3, :cond_36

    move-object v10, v6

    move/from16 v6, v21

    const/4 v0, 0x4

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_36
    if-ne v4, v3, :cond_45

    :try_start_e
    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->n:[B

    aget-byte v6, v6, v12

    sget-object v9, Lcom/badlogic/gdx/utils/JsonReader;->e:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v9, v6

    :goto_27
    add-int/lit8 v9, v6, -0x1

    if-lez v6, :cond_45

    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->e:[B

    add-int/lit8 v11, v10, 0x1

    aget-byte v6, v6, v10

    const/4 v10, 0x1

    if-eq v6, v10, :cond_37

    move/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v5, 0x2e

    move/from16 v27, v16

    move-object/from16 v16, v0

    move/from16 v0, v27

    goto/16 :goto_2e

    :cond_37
    new-instance v6, Ljava/lang/String;

    sub-int v10, v4, v13

    invoke-direct {v6, v2, v13, v10}, Ljava/lang/String;-><init>([CII)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_9

    if-eqz v14, :cond_38

    :try_start_f
    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/JsonReader;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_38
    if-eqz v15, :cond_39

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v5, 0x2e

    const/4 v15, 0x0

    goto/16 :goto_2d

    :cond_39
    :try_start_10
    iget v10, v5, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_9

    if-lez v10, :cond_3a

    :try_start_11
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_28

    :cond_3a
    const/4 v10, 0x0

    :goto_28
    if-eqz v16, :cond_43

    :try_start_12
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_9

    if-eqz v12, :cond_3b

    const/4 v12, 0x1

    :try_start_13
    invoke-virtual {v1, v10, v12}, Lcom/badlogic/gdx/utils/JsonReader;->b(Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    :goto_29
    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v5, 0x2e

    goto/16 :goto_2d

    :cond_3b
    const/4 v12, 0x1

    :try_start_14
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9

    if-eqz v16, :cond_3c

    const/4 v6, 0x0

    :try_start_15
    invoke-virtual {v1, v10, v6}, Lcom/badlogic/gdx/utils/JsonReader;->b(Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    goto :goto_29

    :cond_3c
    :try_start_16
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_9

    if-eqz v16, :cond_3d

    const/4 v12, 0x0

    :try_start_17
    invoke-virtual {v1, v10, v12}, Lcom/badlogic/gdx/utils/JsonReader;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    goto :goto_29

    :cond_3d
    move-object/from16 v16, v0

    move v0, v13

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_2a
    if-ge v0, v4, :cond_41

    move/from16 v17, v4

    :try_start_18
    aget-char v4, v2, v0
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_8

    move-object/from16 v18, v5

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_3e

    const/16 v5, 0x45

    if-eq v4, v5, :cond_3f

    const/16 v5, 0x65

    if-eq v4, v5, :cond_3f

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3e

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_40

    packed-switch v4, :pswitch_data_2

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_2c

    :cond_3e
    const/16 v5, 0x2e

    goto :goto_2b

    :cond_3f
    const/16 v5, 0x2e

    :cond_40
    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_2b
    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_2a

    :cond_41
    move/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v5, 0x2e

    :goto_2c
    if-eqz v12, :cond_42

    :try_start_19
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/badlogic/gdx/utils/JsonReader;->m(Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_2d

    :cond_42
    if-eqz v13, :cond_44

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/badlogic/gdx/utils/JsonReader;->n(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_8

    goto :goto_2d

    :cond_43
    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    const/16 v5, 0x2e

    :catch_7
    :cond_44
    :try_start_1a
    invoke-virtual {v1, v10, v6}, Lcom/badlogic/gdx/utils/JsonReader;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_8

    :goto_2d
    move/from16 v13, v17

    const/4 v0, 0x0

    :goto_2e
    move v6, v9

    move v10, v11

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v27, v16

    move/from16 v16, v0

    move-object/from16 v0, v27

    goto/16 :goto_27

    :catch_8
    move-exception v0

    move-object v6, v0

    move/from16 v4, v17

    goto :goto_31

    :catch_9
    move-exception v0

    move/from16 v17, v4

    goto :goto_30

    :cond_45
    move/from16 v17, v4

    move/from16 v4, v17

    :goto_2f
    const/4 v6, 0x0

    goto :goto_31

    :catch_a
    move-exception v0

    move-object v6, v0

    move/from16 v4, v24

    goto :goto_31

    :catch_b
    move-exception v0

    move/from16 v24, v4

    :goto_30
    move-object v6, v0

    :goto_31
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->c:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/badlogic/gdx/utils/JsonReader;->c:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v5, v1, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonReader;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->clear()V

    if-ge v4, v3, :cond_48

    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_32
    if-ge v7, v4, :cond_47

    aget-char v0, v2, v7

    const/16 v5, 0xa

    if-ne v0, v5, :cond_46

    add-int/lit8 v9, v9, 0x1

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_47
    add-int/lit8 v0, v4, -0x20

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing JSON on line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " near: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    sub-int v9, v4, v0

    invoke-direct {v8, v2, v0, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*ERROR*"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    const/16 v8, 0x40

    sub-int/2addr v3, v4

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_48
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v4, :cond_4a

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched brace."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched bracket."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    if-nez v6, :cond_4b

    return-object v0

    :cond_4b
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public q(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/JsonReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->d:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->a(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v5, 0x22

    if-eq v3, v5, :cond_8

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_8

    if-eq v3, v4, :cond_8

    const/16 v4, 0x62

    if-eq v3, v4, :cond_7

    const/16 v4, 0x66

    if-eq v3, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x72

    if-eq v3, v4, :cond_4

    const/16 v4, 0x74

    if-ne v3, v4, :cond_3

    const/16 v3, 0x9

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal escaped character: \\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/16 v3, 0xd

    goto :goto_2

    :cond_5
    const/16 v3, 0xa

    goto :goto_2

    :cond_6
    const/16 v3, 0xc

    goto :goto_2

    :cond_7
    const/16 v3, 0x8

    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
