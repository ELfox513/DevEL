.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/XmlReader$Element;
    }
.end annotation


# static fields
.field public static final f:[B

.field public static final g:[B

.field public static final h:[C

.field public static final i:[B

.field public static final j:[B

.field public static final k:[S

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field public c:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field public final d:Lcom/badlogic/gdx/utils/StringBuilder;

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->d()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->f:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->g()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->g:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->k()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->h:[C

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->i()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->i:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->h()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->j:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->e()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->k:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->f()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->l:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->l()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->m:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->j()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->n:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public static d()[B
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
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
        0x2t
        0x1t
        0x4t
        0x2t
        0x2t
        0x4t
        0x2t
        0x6t
        0x7t
        0x2t
        0x6t
        0x8t
        0x3t
        0x0t
        0x6t
        0x7t
    .end array-data
.end method

.method public static e()[S
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x4s
        0x9s
        0xes
        0x14s
        0x1as
        0x1es
        0x23s
        0x25s
        0x27s
        0x2cs
        0x30s
        0x34s
        0x36s
        0x38s
        0x3cs
        0x3es
        0x43s
        0x48s
        0x4es
        0x54s
        0x58s
        0x5ds
        0x5fs
        0x61s
        0x66s
        0x6as
        0x6es
        0x70s
        0x74s
        0x76s
        0x78s
        0x7as
        0x7cs
        0x7fs
    .end array-data
.end method

.method public static f()[B
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x6t
        0x7t
        0x5t
        0x4t
        0x9t
        0xat
        0x1t
        0xbt
        0x9t
        0x8t
        0xdt
        0x1t
        0xet
        0x1t
        0xdt
        0xct
        0xft
        0x10t
        0xft
        0x1t
        0x10t
        0x11t
        0x12t
        0x10t
        0x1t
        0x14t
        0x13t
        0x16t
        0x15t
        0x9t
        0xat
        0xbt
        0x9t
        0x1t
        0x17t
        0x18t
        0x17t
        0x1t
        0x19t
        0xbt
        0x19t
        0x1t
        0x14t
        0x1at
        0x16t
        0x1bt
        0x1dt
        0x1et
        0x1dt
        0x1ct
        0x20t
        0x1ft
        0x1et
        0x22t
        0x1t
        0x1et
        0x21t
        0x24t
        0x25t
        0x26t
        0x24t
        0x23t
        0x28t
        0x29t
        0x1t
        0x2at
        0x28t
        0x27t
        0x2ct
        0x1t
        0x2dt
        0x1t
        0x2ct
        0x2bt
        0x2et
        0x2ft
        0x2et
        0x1t
        0x2ft
        0x30t
        0x31t
        0x2ft
        0x1t
        0x33t
        0x32t
        0x35t
        0x34t
        0x28t
        0x29t
        0x2at
        0x28t
        0x1t
        0x36t
        0x37t
        0x36t
        0x1t
        0x38t
        0x2at
        0x38t
        0x1t
        0x39t
        0x1t
        0x39t
        0x22t
        0x39t
        0x1t
        0x1t
        0x3at
        0x3bt
        0x3at
        0x33t
        0x3ct
        0x35t
        0x3dt
        0x3et
        0x3et
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public static g()[B
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x9t
        0xet
        0x14t
        0x1at
        0x1et
        0x23t
        0x24t
        0x25t
        0x2at
        0x2et
        0x32t
        0x33t
        0x34t
        0x38t
        0x39t
        0x3et
        0x43t
        0x49t
        0x4ft
        0x53t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x63t
        0x67t
        0x68t
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x73t
    .end array-data
.end method

.method public static h()[B
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public static i()[B
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public static j()[B
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x3t
        0xdt
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x19t
        0x0t
        0x13t
        0x5t
        0x10t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x16t
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0xdt
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x19t
        0x0t
        0x13t
        0x5t
        0x10t
        0x0t
        0x0t
        0x0t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static k()[C
    .locals 1

    const/16 v0, 0x74

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x3cs
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x27s
        0x27s
        0x20s
        0x3cs
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x9s
        0xds
        0x3es
        0x3es
        0x27s
        0x27s
        0x20s
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method public static l()[B
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0xbt
        0x22t
        0x5t
        0x4t
        0xbt
        0x22t
        0x5t
        0x6t
        0x7t
        0x6t
        0x7t
        0x8t
        0xdt
        0x9t
        0xat
        0x9t
        0xat
        0xct
        0x22t
        0xct
        0xet
        0xet
        0x10t
        0xft
        0x11t
        0x10t
        0x11t
        0x12t
        0x1et
        0x12t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x15t
        0x16t
        0x15t
        0x16t
        0x17t
        0x20t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1bt
        0x1ct
        0x1bt
        0x1dt
        0x1ft
        0x23t
        0x21t
        0x21t
        0x22t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->b:Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "<"

    return-object p1

    :cond_0
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ">"

    return-object p1

    :cond_1
    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "&"

    return-object p1

    :cond_2
    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "\'"

    return-object p1

    :cond_3
    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "\""

    return-object p1

    :cond_4
    const-string v0, "#x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/XmlReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

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

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

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

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    return-object p1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v7, 0x2

    const/4 v8, 0x1

    move/from16 v9, p2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    :goto_1
    const/16 v15, 0xa

    if-eqz v10, :cond_1

    if-eq v10, v8, :cond_3

    if-eq v10, v7, :cond_0

    const/4 v7, 0x0

    const/16 v17, 0x1

    goto/16 :goto_1e

    :cond_0
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/16 v17, 0x1

    goto/16 :goto_1c

    :cond_1
    if-ne v9, v2, :cond_2

    const/4 v10, 0x4

    goto :goto_1

    :cond_2
    if-nez v11, :cond_3

    goto/16 :goto_1d

    :cond_3
    sget-object v10, Lcom/badlogic/gdx/utils/XmlReader;->g:[B

    aget-byte v10, v10, v11

    sget-object v16, Lcom/badlogic/gdx/utils/XmlReader;->k:[S

    aget-short v16, v16, v11

    sget-object v17, Lcom/badlogic/gdx/utils/XmlReader;->i:[B

    aget-byte v17, v17, v11

    if-lez v17, :cond_7

    add-int v18, v10, v17

    add-int/lit8 v19, v18, -0x1

    move v4, v10

    move/from16 v5, v19

    :goto_2
    if-ge v5, v4, :cond_4

    add-int v16, v16, v17

    move/from16 v10, v18

    goto :goto_3

    :cond_4
    sub-int v20, v5, v4

    shr-int/lit8 v20, v20, 0x1

    add-int v20, v4, v20

    aget-char v6, v1, v9

    sget-object v21, Lcom/badlogic/gdx/utils/XmlReader;->h:[C

    aget-char v3, v21, v20

    if-ge v6, v3, :cond_5

    add-int/lit8 v5, v20, -0x1

    goto :goto_2

    :cond_5
    if-le v6, v3, :cond_6

    add-int/lit8 v4, v20, 0x1

    goto :goto_2

    :cond_6
    sub-int v20, v20, v10

    add-int v16, v16, v20

    goto :goto_7

    :cond_7
    :goto_3
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->j:[B

    aget-byte v3, v3, v11

    if-lez v3, :cond_b

    shl-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v10

    sub-int/2addr v4, v7

    move v5, v10

    :goto_4
    if-ge v4, v5, :cond_8

    :goto_5
    add-int v16, v16, v3

    goto :goto_7

    :cond_8
    sub-int v6, v4, v5

    shr-int/2addr v6, v8

    and-int/lit8 v6, v6, -0x2

    add-int/2addr v6, v5

    aget-char v11, v1, v9

    sget-object v17, Lcom/badlogic/gdx/utils/XmlReader;->h:[C

    aget-char v7, v17, v6

    if-ge v11, v7, :cond_9

    add-int/lit8 v4, v6, -0x2

    :goto_6
    const/4 v7, 0x2

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v6, 0x1

    aget-char v5, v17, v5

    if-le v11, v5, :cond_a

    add-int/lit8 v5, v6, 0x2

    goto :goto_6

    :cond_a
    sub-int/2addr v6, v10

    shr-int/lit8 v3, v6, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->l:[B

    aget-byte v3, v3, v16

    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->m:[B

    aget-byte v11, v4, v3

    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->n:[B

    aget-byte v3, v4, v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/badlogic/gdx/utils/XmlReader;->f:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    :goto_8
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_0

    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->f:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, v3, v5

    packed-switch v3, :pswitch_data_0

    :goto_9
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/16 v17, 0x1

    goto/16 :goto_1b

    :pswitch_0
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->n(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_1
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->e:Ljava/lang/String;

    invoke-virtual {v0, v13, v3}, Lcom/badlogic/gdx/utils/XmlReader;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_2
    move v3, v9

    :goto_a
    if-eq v3, v12, :cond_d

    add-int/lit8 v5, v3, -0x1

    aget-char v5, v1, v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_c

    if-eq v5, v15, :cond_c

    const/16 v7, 0xd

    if-eq v5, v7, :cond_c

    const/16 v7, 0x20

    if-eq v5, v7, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_d
    :goto_b
    move v5, v12

    const/4 v7, 0x0

    :goto_c
    if-eq v12, v3, :cond_12

    add-int/lit8 v10, v12, 0x1

    aget-char v12, v1, v12

    const/16 v15, 0x26

    if-eq v12, v15, :cond_e

    move v12, v10

    :goto_d
    const/16 v15, 0xa

    goto :goto_c

    :cond_e
    move v12, v10

    :goto_e
    if-eq v12, v3, :cond_11

    add-int/lit8 v15, v12, 0x1

    aget-char v12, v1, v12

    const/16 v8, 0x3b

    if-eq v12, v8, :cond_f

    move v12, v15

    const/4 v8, 0x1

    goto :goto_e

    :cond_f
    iget-object v7, v0, Lcom/badlogic/gdx/utils/XmlReader;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int v8, v10, v5

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v1, v5, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sub-int v7, v15, v10

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v5, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/XmlReader;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v7, :cond_10

    move-object v5, v7

    :cond_10
    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v5, v15

    move v12, v5

    const/4 v7, 0x1

    goto :goto_f

    :cond_11
    const/16 v17, 0x1

    :goto_f
    const/4 v8, 0x1

    goto :goto_d

    :cond_12
    const/16 v17, 0x1

    if-eqz v7, :cond_14

    if-ge v5, v3, :cond_13

    iget-object v7, v0, Lcom/badlogic/gdx/utils/XmlReader;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    sub-int/2addr v3, v5

    invoke-virtual {v7, v1, v5, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([CII)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_13
    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->d:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto :goto_10

    :cond_14
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {v8, v1, v5, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v8, v0, Lcom/badlogic/gdx/utils/XmlReader;->e:Ljava/lang/String;

    :goto_10
    move v12, v5

    goto :goto_11

    :pswitch_3
    const/4 v7, 0x0

    const/16 v17, 0x1

    new-instance v3, Ljava/lang/String;

    sub-int v5, v9, v12

    invoke-direct {v3, v1, v12, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v13, v3

    :cond_15
    :goto_11
    const/4 v10, 0x2

    goto/16 :goto_1b

    :pswitch_4
    const/4 v7, 0x0

    const/16 v17, 0x1

    if-eqz v14, :cond_15

    goto :goto_12

    :pswitch_5
    const/4 v7, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->b()V

    :goto_12
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x2

    :goto_13
    const/16 v11, 0xf

    goto/16 :goto_1

    :pswitch_6
    const/4 v7, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->b()V

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/16 v11, 0xf

    goto/16 :goto_0

    :pswitch_7
    const/4 v7, 0x0

    const/16 v17, 0x1

    aget-char v3, v1, v12

    const/16 v5, 0x3f

    const/16 v8, 0x21

    if-eq v3, v5, :cond_17

    if-ne v3, v8, :cond_16

    goto :goto_14

    :cond_16
    new-instance v3, Ljava/lang/String;

    sub-int v5, v9, v12

    invoke-direct {v3, v1, v12, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->m(Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v14, 0x1

    goto/16 :goto_1b

    :cond_17
    :goto_14
    add-int/lit8 v4, v12, 0x1

    aget-char v4, v1, v4

    const/16 v5, 0x5b

    const/16 v6, 0x3e

    if-ne v4, v5, :cond_1a

    add-int/lit8 v10, v12, 0x2

    aget-char v10, v1, v10

    const/16 v11, 0x43

    if-ne v10, v11, :cond_1a

    add-int/lit8 v10, v12, 0x3

    aget-char v10, v1, v10

    const/16 v11, 0x44

    if-ne v10, v11, :cond_1a

    add-int/lit8 v10, v12, 0x4

    aget-char v10, v1, v10

    const/16 v11, 0x41

    if-ne v10, v11, :cond_1a

    add-int/lit8 v10, v12, 0x5

    aget-char v10, v1, v10

    const/16 v15, 0x54

    if-ne v10, v15, :cond_1a

    add-int/lit8 v10, v12, 0x6

    aget-char v10, v1, v10

    if-ne v10, v11, :cond_1a

    add-int/lit8 v10, v12, 0x7

    aget-char v10, v1, v10

    if-ne v10, v5, :cond_1a

    add-int/lit8 v5, v12, 0x8

    add-int/lit8 v3, v5, 0x2

    :goto_15
    add-int/lit8 v4, v3, -0x2

    aget-char v4, v1, v4

    const/16 v8, 0x5d

    if-ne v4, v8, :cond_19

    add-int/lit8 v4, v3, -0x1

    aget-char v4, v1, v4

    if-ne v4, v8, :cond_19

    aget-char v4, v1, v3

    if-eq v4, v6, :cond_18

    goto :goto_16

    :cond_18
    new-instance v4, Ljava/lang/String;

    sub-int v6, v3, v5

    const/4 v10, 0x2

    sub-int/2addr v6, v10

    invoke-direct {v4, v1, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/XmlReader;->n(Ljava/lang/String;)V

    move v9, v3

    move v12, v5

    goto :goto_1a

    :cond_19
    :goto_16
    const/4 v10, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1a
    const/4 v10, 0x2

    if-ne v3, v8, :cond_1d

    const/16 v3, 0x2d

    if-ne v4, v3, :cond_1d

    add-int/lit8 v4, v12, 0x2

    aget-char v4, v1, v4

    if-ne v4, v3, :cond_1d

    add-int/lit8 v4, v12, 0x3

    :goto_17
    aget-char v5, v1, v4

    if-ne v5, v3, :cond_1c

    add-int/lit8 v5, v4, 0x1

    aget-char v5, v1, v5

    if-ne v5, v3, :cond_1c

    add-int/lit8 v5, v4, 0x2

    aget-char v8, v1, v5

    if-eq v8, v6, :cond_1b

    goto :goto_18

    :cond_1b
    move v9, v5

    goto :goto_1a

    :cond_1c
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1d
    :goto_19
    aget-char v3, v1, v9

    if-eq v3, v6, :cond_1e

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_1e
    :goto_1a
    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_13

    :pswitch_8
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/16 v17, 0x1

    move v12, v9

    :goto_1b
    move v3, v4

    move v5, v6

    const/4 v8, 0x1

    const/16 v15, 0xa

    goto/16 :goto_8

    :goto_1c
    if-nez v11, :cond_1f

    const/4 v7, 0x2

    const/4 v8, 0x1

    :goto_1d
    const/4 v10, 0x5

    goto/16 :goto_1

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    if-eq v9, v2, :cond_20

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_20
    :goto_1e
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/badlogic/gdx/utils/XmlReader;->e:Ljava/lang/String;

    if-ge v9, v2, :cond_23

    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_1f
    if-ge v6, v9, :cond_22

    aget-char v3, v1, v6

    const/16 v4, 0xa

    if-ne v3, v4, :cond_21

    add-int/lit8 v8, v8, 0x1

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_22
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing XML on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " near: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v2, v9

    const/16 v6, 0x20

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v5, v1, v9, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_23
    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_24

    iget-object v1, v0, Lcom/badlogic/gdx/utils/XmlReader;->b:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader;->b:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-object v1

    :cond_24
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/XmlReader;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing XML, unclosed element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw v2

    :goto_21
    goto :goto_20

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
