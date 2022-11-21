.class public Lcom/esotericsoftware/jsonbeans/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/jsonbeans/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/esotericsoftware/jsonbeans/JsonValue;

.field public d:Lcom/esotericsoftware/jsonbeans/JsonValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->b()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->e:[B

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->f()[S

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->f:[S

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->j()[C

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->g:[C

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->h()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->h:[B

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->g()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->i:[B

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->d()[S

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->j:[S

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->e()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->k:[B

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->k()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->l:[B

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->i()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->m:[B

    invoke-static {}, Lcom/esotericsoftware/jsonbeans/JsonReader;->c()[B

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/jsonbeans/JsonReader;->n:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static b()[B
    .locals 1

    const/16 v0, 0x27

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
        0x2t
        0x6t
        0x1t
        0x2t
        0x7t
        0x6t
        0x3t
        0x0t
        0x7t
        0x6t
    .end array-data
.end method

.method public static c()[B
    .locals 1

    const/16 v0, 0x25

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
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static d()[S
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xcs
        0xfs
        0x11s
        0x1es
        0x2as
        0x30s
        0x36s
        0x39s
        0x45s
        0x4cs
        0x53s
        0x5fs
        0x61s
        0x68s
        0x75s
        0x78s
        0x7as
        0x82s
        0x8fs
        0x96s
        0xa3s
        0xafs
        0xb6s
        0xbds
        0xc9s
        0xcbs
        0xd3s
        0xe0s
        0xe3s
        0xebs
        0xf8s
        0xfds
        0x102s
        0x108s
        0x109s
    .end array-data
.end method

.method public static e()[B
    .locals 1

    const/16 v0, 0x10b

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
        0x3t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x1t
        0x1t
        0x2t
        0x9t
        0x3t
        0xat
        0x3t
        0x5t
        0x3t
        0x6t
        0x3t
        0x1t
        0x0t
        0xct
        0xct
        0xdt
        0xet
        0xft
        0x3t
        0x3t
        0x3t
        0x3t
        0x10t
        0xct
        0xbt
        0x11t
        0x11t
        0x12t
        0x13t
        0x11t
        0x3t
        0x14t
        0x14t
        0x15t
        0x16t
        0x14t
        0x3t
        0x17t
        0x17t
        0x3t
        0x16t
        0x16t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x3t
        0x1ct
        0x3t
        0x16t
        0x18t
        0x1dt
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1dt
        0x3t
        0x21t
        0x21t
        0xet
        0x22t
        0x10t
        0x21t
        0x3t
        0xet
        0xet
        0xdt
        0x3t
        0x23t
        0x3t
        0x3t
        0x3t
        0x3t
        0x10t
        0xet
        0xbt
        0x11t
        0x3t
        0x11t
        0x11t
        0x24t
        0x25t
        0x13t
        0x11t
        0x3t
        0xet
        0xet
        0xdt
        0x26t
        0x3t
        0x27t
        0x3t
        0x3t
        0x3t
        0x3t
        0x10t
        0xet
        0xbt
        0x28t
        0x28t
        0x3t
        0x1dt
        0x3t
        0x1dt
        0x1dt
        0x29t
        0x1et
        0x2at
        0x20t
        0x1dt
        0x3t
        0x16t
        0x16t
        0x19t
        0x2bt
        0x3t
        0x2ct
        0x3t
        0x1bt
        0x3t
        0x1ct
        0x3t
        0x16t
        0x18t
        0x11t
        0x11t
        0x2dt
        0x2et
        0x13t
        0x11t
        0x3t
        0xct
        0xct
        0xdt
        0x26t
        0xet
        0x2ft
        0x3t
        0x3t
        0x3t
        0x3t
        0x10t
        0xct
        0xbt
        0x31t
        0x31t
        0x32t
        0x33t
        0x34t
        0x3t
        0x35t
        0x36t
        0x37t
        0x3t
        0x31t
        0x30t
        0x38t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x38t
        0x3t
        0x3ct
        0x3ct
        0x33t
        0x3dt
        0x36t
        0x3ct
        0x3t
        0x33t
        0x33t
        0x32t
        0x3t
        0x3et
        0x3t
        0x35t
        0x36t
        0x37t
        0x3t
        0x33t
        0x30t
        0x38t
        0x3t
        0x38t
        0x38t
        0x3ft
        0x39t
        0x40t
        0x3bt
        0x38t
        0x3t
        0x33t
        0x33t
        0x32t
        0x41t
        0x3t
        0x42t
        0x3t
        0x35t
        0x36t
        0x37t
        0x3t
        0x33t
        0x30t
        0x43t
        0x43t
        0x3t
        0x38t
        0x38t
        0x44t
        0x39t
        0x45t
        0x3bt
        0x38t
        0x3t
        0x31t
        0x31t
        0x32t
        0x41t
        0x33t
        0x46t
        0x3t
        0x35t
        0x36t
        0x37t
        0x3t
        0x31t
        0x30t
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
        0x8t
        0x8t
        0x4at
        0x4bt
        0x8t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method public static f()[S
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xcs
        0xes
        0xfs
        0x1cs
        0x28s
        0x2es
        0x34s
        0x36s
        0x42s
        0x49s
        0x50s
        0x5cs
        0x5ds
        0x64s
        0x71s
        0x73s
        0x74s
        0x7cs
        0x89s
        0x90s
        0x9ds
        0xa9s
        0xb0s
        0xb7s
        0xc3s
        0xc4s
        0xccs
        0xd9s
        0xdbs
        0xe3s
        0xf0s
        0xf5s
        0xfas
        0x100s
        0x100s
    .end array-data
.end method

.method public static g()[B
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static h()[B
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0xat
        0x2t
        0x1t
        0xbt
        0xat
        0x4t
        0x4t
        0x2t
        0xat
        0x5t
        0x5t
        0xat
        0x1t
        0x5t
        0xbt
        0x2t
        0x1t
        0x6t
        0xbt
        0x5t
        0xbt
        0xat
        0x5t
        0x5t
        0xat
        0x1t
        0x6t
        0xbt
        0x2t
        0x6t
        0xbt
        0x3t
        0x3t
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public static i()[B
    .locals 1

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0xdt
        0x7t
        0x3t
        0xbt
        0x1t
        0x20t
        0x20t
        0x11t
        0x0t
        0x14t
        0x0t
        0x11t
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
        0xdt
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x11t
        0xbt
        0x1dt
        0x23t
        0x23t
        0xbt
        0xbt
        0x1dt
        0x20t
        0x20t
        0xbt
        0x1dt
        0x23t
        0xdt
        0x0t
        0xft
        0x0t
        0xdt
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0xdt
        0xbt
        0x1dt
        0x20t
        0x20t
        0xbt
        0xbt
        0x1dt
        0x20t
        0x1t
        0x0t
        0x0t
        0xbt
        0x1dt
    .end array-data
.end method

.method public static j()[C
    .locals 1

    const/16 v0, 0x101

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
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0xds
        0x20s
        0x22s
        0x2as
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
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
        0x7ds
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
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x2as
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2as
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0xds
        0x20s
        0x2as
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2as
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2as
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2as
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
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
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x2as
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2as
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x2as
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x2as
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x9s
        0xas
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
        0xds
        0x20s
        0x2as
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method public static k()[B
    .locals 1

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x20t
        0x1t
        0x3t
        0x0t
        0x22t
        0x21t
        0x21t
        0x21t
        0x21t
        0x20t
        0x22t
        0x6t
        0x5t
        0xdt
        0xct
        0x14t
        0x23t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x11t
        0x12t
        0xbt
        0xbt
        0xbt
        0xct
        0x10t
        0x23t
        0xbt
        0x10t
        0xet
        0xct
        0xft
        0x6t
        0xet
        0xbt
        0x9t
        0x13t
        0xat
        0x12t
        0x5t
        0x15t
        0x14t
        0x17t
        0x16t
        0x1at
        0x19t
        0x1et
        0x18t
        0x24t
        0x18t
        0x18t
        0x19t
        0x1dt
        0x24t
        0x18t
        0x1dt
        0x1bt
        0x19t
        0x1ct
        0x17t
        0x1bt
        0x18t
        0x16t
        0x1ft
        0x1et
        0x2t
        0x21t
        0x2t
        0x1t
        0x4t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object p2, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->c:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isArray()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-virtual {p1}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isObject()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->c:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget v0, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    if-nez v0, :cond_3

    iput-object p2, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->child:Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object p2, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->next:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object p1, p2, Lcom/esotericsoftware/jsonbeans/JsonValue;->prev:Lcom/esotericsoftware/jsonbeans/JsonValue;

    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget p2, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    :goto_2
    return-void
.end method

.method public bool(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

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
    new-instance p1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal escaped character: \\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public number(Ljava/lang/String;D)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-direct {v0, p2, p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method

.method public number(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-direct {v0, p2, p3}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method

.method public parse(Ljava/io/File;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/Reader;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse(Ljava/io/Reader;)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse([CII)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :cond_0
    if-nez v3, :cond_1

    :try_start_2
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/esotericsoftware/jsonbeans/JsonException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->parse([CII)Lcom/esotericsoftware/jsonbeans/JsonValue;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/esotericsoftware/jsonbeans/JsonValue;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v0, 0x4

    new-array v4, v0, [I

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

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

    if-eq v11, v9, :cond_28

    goto/16 :goto_22

    :cond_0
    move-object/from16 v19, v10

    goto/16 :goto_1b

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

    goto/16 :goto_1c

    :cond_4
    :goto_1
    :try_start_0
    sget-object v11, Lcom/esotericsoftware/jsonbeans/JsonReader;->f:[S

    aget-short v11, v11, v12

    sget-object v17, Lcom/esotericsoftware/jsonbeans/JsonReader;->j:[S

    aget-short v17, v17, v12

    sget-object v19, Lcom/esotericsoftware/jsonbeans/JsonReader;->h:[B

    aget-byte v19, v19, v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9

    if-lez v19, :cond_8

    add-int v20, v11, v19

    add-int/lit8 v21, v20, -0x1

    move/from16 v9, v21

    move/from16 v21, v13

    move v13, v11

    :goto_2
    if-ge v9, v13, :cond_5

    add-int v17, v17, v19

    move/from16 v11, v20

    goto :goto_3

    :cond_5
    sub-int v22, v9, v13

    const/16 v18, 0x1

    shr-int/lit8 v22, v22, 0x1

    add-int v22, v13, v22

    move/from16 v23, v9

    :try_start_1
    aget-char v9, v2, v4

    sget-object v24, Lcom/esotericsoftware/jsonbeans/JsonReader;->g:[C

    move/from16 v25, v13

    aget-char v13, v24, v22
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v9, v13, :cond_6

    add-int/lit8 v9, v22, -0x1

    move/from16 v13, v25

    goto :goto_2

    :cond_6
    if-le v9, v13, :cond_7

    add-int/lit8 v13, v22, 0x1

    move/from16 v9, v23

    goto :goto_2

    :cond_7
    sub-int v22, v22, v11

    add-int v17, v17, v22

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_23

    :cond_8
    move/from16 v21, v13

    :goto_3
    :try_start_2
    sget-object v9, Lcom/esotericsoftware/jsonbeans/JsonReader;->i:[B

    aget-byte v9, v9, v12

    if-lez v9, :cond_c

    shl-int/lit8 v12, v9, 0x1

    add-int/2addr v12, v11

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    move v13, v11

    :goto_4
    if-ge v12, v13, :cond_9

    add-int v17, v17, v9

    goto :goto_6

    :cond_9
    sub-int v19, v12, v13

    const/16 v18, 0x1

    shr-int/lit8 v19, v19, 0x1

    and-int/lit8 v19, v19, -0x2

    add-int v19, v13, v19

    move/from16 v20, v9

    aget-char v9, v2, v4

    sget-object v22, Lcom/esotericsoftware/jsonbeans/JsonReader;->g:[C
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_9

    move/from16 v23, v4

    :try_start_3
    aget-char v4, v22, v19

    if-ge v9, v4, :cond_a

    add-int/lit8 v12, v19, -0x2

    :goto_5
    move/from16 v9, v20

    move/from16 v4, v23

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v19, 0x1

    aget-char v4, v22, v4

    if-le v9, v4, :cond_b

    add-int/lit8 v13, v19, 0x2

    goto :goto_5

    :cond_b
    sub-int v19, v19, v11

    const/4 v4, 0x1

    shr-int/lit8 v9, v19, 0x1

    add-int v17, v17, v9

    goto :goto_7

    :cond_c
    :goto_6
    move/from16 v23, v4

    :goto_7
    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonReader;->k:[B

    aget-byte v4, v4, v17

    sget-object v9, Lcom/esotericsoftware/jsonbeans/JsonReader;->l:[B

    aget-byte v9, v9, v4

    sget-object v11, Lcom/esotericsoftware/jsonbeans/JsonReader;->m:[B

    aget-byte v4, v11, v4

    if-eqz v4, :cond_26

    sget-object v11, Lcom/esotericsoftware/jsonbeans/JsonReader;->e:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v11, v4

    move/from16 v13, v21

    :goto_8
    add-int/lit8 v11, v4, -0x1

    if-lez v4, :cond_25

    sget-object v4, Lcom/esotericsoftware/jsonbeans/JsonReader;->e:[B

    add-int/lit8 v17, v12, 0x1

    aget-byte v4, v4, v12
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8

    packed-switch v4, :pswitch_data_0

    move v4, v9

    move-object/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_19

    :pswitch_0
    add-int/lit8 v23, v23, 0x1

    move/from16 v4, v23

    const/4 v12, 0x0

    :cond_d
    :try_start_4
    aget-char v13, v2, v4
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v14, 0x22

    if-eq v13, v14, :cond_f

    const/16 v14, 0x5c

    if-eq v13, v14, :cond_e

    :goto_9
    const/4 v13, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x1

    goto :goto_9

    :goto_a
    add-int/2addr v4, v13

    if-ne v4, v3, :cond_d

    :cond_f
    const/4 v13, -0x1

    add-int/2addr v4, v13

    move-object/from16 v19, v10

    move/from16 v20, v11

    move v14, v12

    move/from16 v13, v23

    move/from16 v23, v4

    move v4, v9

    goto/16 :goto_19

    :pswitch_1
    const/16 v12, 0xd

    const/16 v13, 0x9

    if-eqz v15, :cond_12

    move/from16 v14, v23

    :goto_b
    :try_start_5
    aget-char v4, v2, v14
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    if-eq v4, v13, :cond_11

    const/16 v13, 0xa

    if-eq v4, v13, :cond_11

    if-eq v4, v12, :cond_11

    const/16 v13, 0x20

    if-eq v4, v13, :cond_11

    const/16 v13, 0x3a

    if-eq v4, v13, :cond_11

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_10

    goto :goto_c

    :cond_10
    const/16 v13, 0x9

    goto :goto_b

    :cond_11
    :goto_c
    const/4 v4, -0x1

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v13, v0

    move v4, v14

    goto/16 :goto_24

    :cond_12
    move/from16 v4, v23

    :goto_d
    :try_start_6
    aget-char v13, v2, v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v14, 0x9

    if-eq v13, v14, :cond_14

    const/16 v14, 0xa

    if-eq v13, v14, :cond_14

    if-eq v13, v12, :cond_14

    const/16 v14, 0x20

    if-eq v13, v14, :cond_14

    const/16 v12, 0x2c

    if-eq v13, v12, :cond_14

    const/16 v12, 0x5d

    if-eq v13, v12, :cond_14

    const/16 v12, 0x7d

    if-eq v13, v12, :cond_14

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_13

    goto :goto_e

    :cond_13
    const/16 v12, 0xd

    goto :goto_d

    :cond_14
    :goto_e
    move v14, v4

    goto :goto_c

    :goto_f
    add-int/2addr v14, v4

    move v4, v9

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v13, v23

    const/16 v16, 0x1

    move/from16 v23, v14

    const/4 v14, 0x0

    goto/16 :goto_19

    :pswitch_2
    add-int/lit8 v4, v23, 0x1

    :try_start_7
    aget-char v12, v2, v23
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    move/from16 v19, v4

    const/16 v4, 0x2f

    if-ne v12, v4, :cond_17

    move/from16 v4, v19

    :goto_10
    :try_start_8
    aget-char v12, v2, v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    move/from16 v20, v11

    const/16 v11, 0xa

    if-eq v12, v11, :cond_15

    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v20

    goto :goto_10

    :cond_15
    move/from16 v23, v4

    :cond_16
    move v4, v9

    move-object/from16 v19, v10

    goto/16 :goto_19

    :cond_17
    move/from16 v20, v11

    :goto_11
    :try_start_9
    aget-char v11, v2, v19

    const/16 v12, 0x2a

    if-ne v11, v12, :cond_18

    add-int/lit8 v23, v19, 0x1

    aget-char v11, v2, v23
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    if-eq v11, v4, :cond_16

    :cond_18
    add-int/lit8 v19, v19, 0x1

    goto :goto_11

    :catch_2
    move-exception v0

    move-object v13, v0

    move/from16 v4, v19

    goto/16 :goto_24

    :catch_3
    move-exception v0

    move/from16 v19, v4

    goto/16 :goto_23

    :pswitch_3
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->pop()V

    add-int/lit8 v6, v6, -0x1

    aget v12, v10, v6

    goto :goto_13

    :pswitch_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->startArray(Ljava/lang/String;)V

    array-length v0, v10

    if-ne v6, v0, :cond_1a

    array-length v0, v10

    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v4, v10

    const/4 v7, 0x0

    invoke-static {v10, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    :cond_1a
    add-int/lit8 v0, v6, 0x1

    aput v9, v10, v6

    const/16 v12, 0x16

    move v6, v0

    goto :goto_13

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->pop()V

    add-int/lit8 v6, v6, -0x1

    aget v12, v10, v6

    :goto_13
    move/from16 v4, v23

    const/4 v0, 0x4

    const/4 v11, 0x2

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_14

    :cond_1b
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->startObject(Ljava/lang/String;)V

    array-length v0, v10

    if-ne v6, v0, :cond_1c

    array-length v0, v10

    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v7, v10

    const/4 v8, 0x0

    invoke-static {v10, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    goto :goto_15

    :cond_1c
    const/4 v4, 0x2

    :goto_15
    add-int/lit8 v0, v6, 0x1

    aput v9, v10, v6

    move v6, v0

    move/from16 v4, v23

    const/4 v0, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x5

    goto/16 :goto_0

    :pswitch_7
    move/from16 v20, v11

    const/4 v4, 0x2

    new-instance v11, Ljava/lang/String;

    sub-int v12, v23, v13

    invoke-direct {v11, v2, v13, v12}, Ljava/lang/String;-><init>([CII)V

    if-eqz v14, :cond_1d

    invoke-virtual {v1, v11}, Lcom/esotericsoftware/jsonbeans/JsonReader;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_1d
    if-eqz v15, :cond_1e

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v9

    move-object/from16 v19, v10

    const/4 v15, 0x0

    goto/16 :goto_18

    :cond_1e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_1f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_16

    :cond_1f
    const/4 v12, 0x0

    :goto_16
    if-eqz v16, :cond_24

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    const/4 v11, 0x1

    invoke-virtual {v1, v12, v11}, Lcom/esotericsoftware/jsonbeans/JsonReader;->bool(Ljava/lang/String;Z)V

    :goto_17
    move v4, v9

    move-object/from16 v19, v10

    goto :goto_18

    :cond_20
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    const/4 v11, 0x0

    invoke-virtual {v1, v12, v11}, Lcom/esotericsoftware/jsonbeans/JsonReader;->bool(Ljava/lang/String;Z)V

    goto :goto_17

    :cond_21
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lcom/esotericsoftware/jsonbeans/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_22
    const/16 v13, 0x2e

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8

    const/4 v13, -0x1

    if-eq v4, v13, :cond_23

    move v4, v9

    move-object/from16 v19, v10

    :try_start_b
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v1, v12, v9, v10}, Lcom/esotericsoftware/jsonbeans/JsonReader;->number(Ljava/lang/String;D)V

    goto :goto_18

    :cond_23
    move v4, v9

    move-object/from16 v19, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v1, v12, v9, v10}, Lcom/esotericsoftware/jsonbeans/JsonReader;->number(Ljava/lang/String;J)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_18

    :cond_24
    move v4, v9

    move-object/from16 v19, v10

    :catch_4
    :try_start_c
    invoke-virtual {v1, v12, v11}, Lcom/esotericsoftware/jsonbeans/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8

    :goto_18
    move/from16 v13, v23

    const/16 v16, 0x0

    goto :goto_19

    :pswitch_8
    move v4, v9

    move-object/from16 v19, v10

    move/from16 v20, v11

    const/4 v15, 0x1

    :goto_19
    move v9, v4

    move/from16 v12, v17

    move-object/from16 v10, v19

    move/from16 v4, v20

    goto/16 :goto_8

    :cond_25
    move v4, v9

    move-object/from16 v19, v10

    move v12, v4

    goto :goto_1a

    :cond_26
    move v4, v9

    move-object/from16 v19, v10

    move v12, v4

    move/from16 v13, v21

    :goto_1a
    move/from16 v4, v23

    :goto_1b
    if-nez v12, :cond_27

    move-object/from16 v10, v19

    :goto_1c
    const/4 v0, 0x4

    const/4 v11, 0x5

    goto/16 :goto_0

    :cond_27
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v3, :cond_28

    move-object/from16 v10, v19

    const/4 v0, 0x4

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_28
    if-ne v4, v3, :cond_32

    :try_start_d
    sget-object v6, Lcom/esotericsoftware/jsonbeans/JsonReader;->n:[B

    aget-byte v6, v6, v12

    sget-object v9, Lcom/esotericsoftware/jsonbeans/JsonReader;->e:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v6, v9, v6

    :goto_1d
    add-int/lit8 v9, v6, -0x1

    if-lez v6, :cond_32

    sget-object v6, Lcom/esotericsoftware/jsonbeans/JsonReader;->e:[B

    add-int/lit8 v11, v10, 0x1

    aget-byte v6, v6, v10

    const/4 v10, 0x1

    if-eq v6, v10, :cond_29

    move-object v10, v5

    const/4 v12, -0x1

    move/from16 v26, v16

    move/from16 v16, v4

    move/from16 v4, v26

    goto/16 :goto_21

    :cond_29
    new-instance v6, Ljava/lang/String;

    sub-int v10, v4, v13

    invoke-direct {v6, v2, v13, v10}, Ljava/lang/String;-><init>([CII)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v14, :cond_2a

    :try_start_e
    invoke-virtual {v1, v6}, Lcom/esotericsoftware/jsonbeans/JsonReader;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2a
    if-eqz v15, :cond_2b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    move/from16 v16, v4

    move-object v10, v5

    const/4 v12, -0x1

    const/4 v15, 0x0

    goto/16 :goto_20

    :cond_2b
    :try_start_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_7

    if-lez v10, :cond_2c

    :try_start_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    move-object v13, v10

    goto :goto_1e

    :cond_2c
    const/4 v13, 0x0

    :goto_1e
    if-eqz v16, :cond_31

    :try_start_11
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7

    if-eqz v10, :cond_2d

    const/4 v10, 0x1

    :try_start_12
    invoke-virtual {v1, v13, v10}, Lcom/esotericsoftware/jsonbeans/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    :goto_1f
    move/from16 v16, v4

    move-object v10, v5

    const/4 v12, -0x1

    goto :goto_20

    :cond_2d
    const/4 v10, 0x1

    :try_start_13
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_7

    if-eqz v12, :cond_2e

    const/4 v6, 0x0

    :try_start_14
    invoke-virtual {v1, v13, v6}, Lcom/esotericsoftware/jsonbeans/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_1f

    :cond_2e
    :try_start_15
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_7

    if-eqz v12, :cond_2f

    const/4 v12, 0x0

    :try_start_16
    invoke-virtual {v1, v13, v12}, Lcom/esotericsoftware/jsonbeans/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_1f

    :cond_2f
    const/16 v12, 0x2e

    :try_start_17
    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_7

    const/4 v12, -0x1

    if-eq v10, v12, :cond_30

    move/from16 v16, v4

    move-object v10, v5

    :try_start_18
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v13, v4, v5}, Lcom/esotericsoftware/jsonbeans/JsonReader;->number(Ljava/lang/String;D)V

    goto :goto_20

    :cond_30
    move/from16 v16, v4

    move-object v10, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v13, v4, v5}, Lcom/esotericsoftware/jsonbeans/JsonReader;->number(Ljava/lang/String;J)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_6

    goto :goto_20

    :cond_31
    move/from16 v16, v4

    move-object v10, v5

    const/4 v12, -0x1

    :catch_5
    :try_start_19
    invoke-virtual {v1, v13, v6}, Lcom/esotericsoftware/jsonbeans/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_6

    :goto_20
    move/from16 v13, v16

    const/4 v4, 0x0

    :goto_21
    move v6, v9

    move-object v5, v10

    move v10, v11

    move/from16 v26, v16

    move/from16 v16, v4

    move/from16 v4, v26

    goto/16 :goto_1d

    :catch_6
    move-exception v0

    move-object v13, v0

    move/from16 v4, v16

    goto :goto_24

    :catch_7
    move-exception v0

    move/from16 v16, v4

    goto :goto_23

    :cond_32
    move/from16 v16, v4

    move/from16 v4, v16

    :goto_22
    const/4 v13, 0x0

    goto :goto_24

    :catch_8
    move-exception v0

    move-object v13, v0

    move/from16 v4, v23

    goto :goto_24

    :catch_9
    move-exception v0

    move/from16 v23, v4

    :goto_23
    move-object v13, v0

    :goto_24
    iget-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->c:Lcom/esotericsoftware/jsonbeans/JsonValue;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->c:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v5, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-ge v4, v3, :cond_35

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_25
    if-ge v8, v4, :cond_34

    aget-char v0, v2, v8

    const/16 v5, 0xa

    if-ne v0, v5, :cond_33

    add-int/lit8 v9, v9, 0x1

    :cond_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_34
    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing JSON on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " near: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    sub-int/2addr v3, v4

    invoke-direct {v6, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v13}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_35
    iget-object v3, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_37

    iget-object v0, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v2, v1, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/esotericsoftware/jsonbeans/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    const-string v2, "Error parsing JSON, unmatched brace."

    invoke-direct {v0, v2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    const-string v2, "Error parsing JSON, unmatched bracket."

    invoke-direct {v0, v2}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    if-nez v13, :cond_38

    return-object v0

    :cond_38
    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v13}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :goto_26
    throw v0

    :goto_27
    goto :goto_26

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pop()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->c:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    iget v0, v0, Lcom/esotericsoftware/jsonbeans/JsonValue;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-void
.end method

.method public startArray(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->array:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;)V

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-void
.end method

.method public startObject(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    sget-object v1, Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;->object:Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(Lcom/esotericsoftware/jsonbeans/JsonValue$ValueType;)V

    iget-object v1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/esotericsoftware/jsonbeans/JsonReader;->d:Lcom/esotericsoftware/jsonbeans/JsonValue;

    return-void
.end method

.method public string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/jsonbeans/JsonValue;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/jsonbeans/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/jsonbeans/JsonReader;->a(Ljava/lang/String;Lcom/esotericsoftware/jsonbeans/JsonValue;)V

    return-void
.end method
