.class public abstract Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[B

.field public static final e:[S

.field public static final f:[C

.field public static final g:[B

.field public static final h:[B

.field public static final i:[S

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B


# instance fields
.field public a:Z

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->f()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d:[B

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->j()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->e:[S

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->n()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->f:[C

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->l()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->g:[B

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->k()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->h:[B

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->h()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->i:[S

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->i()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->j:[B

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->o()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->k:[B

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->m()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->l:[B

    invoke-static {}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->g()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->m:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->c:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x45

    if-eq v3, v4, :cond_0

    const/16 v4, 0x65

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static f()[B
    .locals 1

    const/16 v0, 0x52

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
        0x1t
        0x6t
        0x1t
        0x9t
        0x1t
        0xct
        0x1t
        0xdt
        0x2t
        0x0t
        0x5t
        0x2t
        0x0t
        0xdt
        0x2t
        0x5t
        0x3t
        0x2t
        0x7t
        0x5t
        0x2t
        0xat
        0x8t
        0x2t
        0xbt
        0x8t
        0x3t
        0x0t
        0x5t
        0x3t
        0x3t
        0x6t
        0x7t
        0x5t
        0x3t
        0x7t
        0x5t
        0x3t
        0x3t
        0xat
        0x8t
        0x5t
        0x3t
        0xat
        0x8t
        0xdt
        0x3t
        0xbt
        0x8t
        0x5t
        0x3t
        0xbt
        0x8t
        0xdt
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x4t
        0xat
        0x8t
        0x5t
        0x3t
        0x4t
        0xbt
        0x8t
        0x5t
        0x3t
    .end array-data
.end method

.method public static g()[B
    .locals 1

    const/16 v0, 0x29

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
        0xbt
        0xbt
        0x2bt
        0x1et
        0x3bt
        0x3bt
        0x33t
        0xbt
        0x15t
        0xbt
        0x33t
        0x33t
    .end array-data
.end method

.method public static h()[S
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x2s
        0x6s
        0xfs
        0x13s
        0x1ds
        0x22s
        0x2bs
        0x35s
        0x3as
        0x43s
        0x45s
        0x4as
        0x4es
        0x52s
        0x57s
        0x63s
        0x6bs
        0x75s
        0x7as
        0x83s
        0x88s
        0x8as
        0x8fs
        0x94s
        0x98s
        0xa3s
        0xa8s
        0xacs
        0xb7s
        0xbds
        0xc0s
        0xc3s
        0xces
        0xd4s
        0xe1s
        0xeas
        0xf0s
        0xf6s
        0x102s
    .end array-data
.end method

.method public static i()[B
    .locals 1

    const/16 v0, 0x109

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x3t
        0x3t
        0x3t
        0x4t
        0x5t
        0x6t
        0x6t
        0x6t
        0x1t
        0x7t
        0x7t
        0x7t
        0x1t
        0x8t
        0x8t
        0x8t
        0x9t
        0xbt
        0xat
        0xat
        0xat
        0xat
        0x1t
        0xct
        0xct
        0xct
        0x5t
        0x1t
        0xdt
        0xdt
        0xdt
        0xet
        0xft
        0x10t
        0x10t
        0x10t
        0x1t
        0x11t
        0x11t
        0x11t
        0x13t
        0x14t
        0x12t
        0x12t
        0x12t
        0x12t
        0x1t
        0x15t
        0x15t
        0x15t
        0x16t
        0x1t
        0x16t
        0x1t
        0x16t
        0x16t
        0x18t
        0x1t
        0x1t
        0x1t
        0x17t
        0x19t
        0x1t
        0x11t
        0x11t
        0x11t
        0x13t
        0x1t
        0x1at
        0x1at
        0x1at
        0x1t
        0x1bt
        0x1bt
        0x1bt
        0x1t
        0x8t
        0x8t
        0x8t
        0x9t
        0x1t
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x21t
        0x20t
        0x20t
        0x20t
        0x20t
        0x1t
        0x22t
        0x22t
        0x22t
        0x5t
        0x23t
        0x23t
        0x23t
        0x1t
        0x24t
        0x24t
        0x24t
        0x26t
        0x27t
        0x25t
        0x25t
        0x25t
        0x25t
        0x1t
        0x28t
        0x28t
        0x28t
        0x29t
        0x1t
        0x29t
        0x1t
        0x29t
        0x29t
        0x2bt
        0x1t
        0x1t
        0x1t
        0x2at
        0x2ct
        0x2ct
        0x2ct
        0x2dt
        0x1t
        0x2et
        0x1t
        0x22t
        0x22t
        0x22t
        0x5t
        0x1t
        0x24t
        0x24t
        0x24t
        0x26t
        0x1t
        0x2ft
        0x2ft
        0x2ft
        0x1t
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1et
        0x21t
        0x2ft
        0x2ft
        0x2ft
        0x2ft
        0x1t
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1t
        0x20t
        0x20t
        0x20t
        0x1t
        0x30t
        0x31t
        0x32t
        0x30t
        0x33t
        0xet
        0xft
        0x10t
        0x10t
        0x10t
        0x1t
        0x32t
        0x31t
        0x32t
        0x32t
        0x33t
        0x1t
        0x35t
        0x36t
        0x34t
        0x38t
        0x39t
        0x37t
        0x3at
        0x3bt
        0x3at
        0x3at
        0x3ct
        0x3et
        0x3dt
        0x3dt
        0x3dt
        0x3dt
        0x1t
        0x3at
        0x3bt
        0x3at
        0x3at
        0x3ct
        0x1t
        0x3ft
        0x40t
        0x3ft
        0x3ft
        0x41t
        0x42t
        0x43t
        0x44t
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1t
        0x45t
        0x31t
        0x45t
        0x45t
        0x33t
        0x46t
        0x46t
        0x46t
        0x1t
        0x47t
        0x48t
        0x47t
        0x47t
        0x49t
        0x1t
        0x45t
        0x31t
        0x45t
        0x45t
        0x33t
        0x1t
        0x3ft
        0x40t
        0x3ft
        0x3ft
        0x41t
        0x42t
        0x44t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1t
        0x3ft
        0x40t
        0x3ft
        0x3ft
        0x41t
        0x1t
        0x0t
    .end array-data
.end method

.method public static j()[S
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x1s
        0x6s
        0x10s
        0x15s
        0x21s
        0x25s
        0x2fs
        0x3bs
        0x3fs
        0x48s
        0x49s
        0x4ds
        0x52s
        0x57s
        0x5bs
        0x69s
        0x72s
        0x7es
        0x82s
        0x8bs
        0x8fs
        0x90s
        0x94s
        0x98s
        0x9ds
        0xaas
        0xaes
        0xb3s
        0xbfs
        0xc4s
        0xc6s
        0xc8s
        0xd5s
        0xdas
        0xe9s
        0xf3s
        0xf8s
        0xfds
        0x10bs
    .end array-data
.end method

.method public static k()[B
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x2t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x3t
        0x2t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x3t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x3t
        0x2t
        0x0t
        0x0t
        0x3t
        0x0t
    .end array-data
.end method

.method public static l()[B
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x6t
        0x1t
        0x6t
        0x4t
        0x6t
        0x6t
        0x4t
        0x7t
        0x1t
        0x4t
        0x1t
        0x1t
        0x4t
        0x8t
        0x5t
        0x6t
        0x4t
        0x7t
        0x4t
        0x1t
        0x4t
        0x4t
        0x1t
        0x7t
        0x4t
        0x1t
        0x8t
        0x5t
        0x2t
        0x2t
        0x7t
        0x5t
        0x9t
        0x6t
        0x5t
        0x5t
        0x8t
        0x5t
    .end array-data
.end method

.method public static m()[B
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x7t
        0x0t
        0xdt
        0x0t
        0x0t
        0x13t
        0xdt
        0xdt
        0x24t
        0x3ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0xdt
        0xft
        0x0t
        0xft
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x1t
        0x0t
        0x0t
        0x21t
        0x0t
        0x37t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xft
        0x0t
        0xft
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x1t
        0x18t
        0x1t
        0x0t
        0x9t
        0x1bt
        0x0t
        0x0t
        0xdt
        0x43t
        0x2bt
        0x0t
        0x2ft
        0x1et
        0x24t
        0x4dt
        0x24t
        0x0t
        0x0t
        0x21t
        0x48t
        0x21t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x1t
        0x27t
        0x1t
    .end array-data
.end method

.method public static n()[C
    .locals 1

    const/16 v0, 0x111

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0xas
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x24s
        0x29s
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x29s
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x29s
        0x9s
        0xds
        0x20s
        0x24s
        0x28s
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x3as
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x23s
        0x3as
        0x28s
        0x29s
        0x22s
        0x9s
        0xds
        0x20s
        0x3as
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x29s
        0x9s
        0xds
        0x20s
        0x24s
        0x29s
        0x2es
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x29s
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x3as
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x22s
        0x23s
        0x3as
        0x28s
        0x29s
        0x9s
        0xds
        0x20s
        0x29s
        0x22s
        0x9s
        0xds
        0x20s
        0x29s
        0x9s
        0xds
        0x20s
        0x3as
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x24s
        0x29s
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xds
        0x20s
        0x29s
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x24s
        0x28s
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0xas
        0xds
        0xas
        0xds
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x24s
        0x2es
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x5fs
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x24s
        0x3fs
        0x5fs
        0x30s
        0x39s
        0x41s
        0x5as
        0x61s
        0x7as
        0x9s
        0xas
        0xds
        0x20s
        0x23s
        0x0s
    .end array-data
.end method

.method public static o()[B
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1dt
        0x0t
        0x21t
        0x3t
        0x4t
        0x7t
        0x10t
        0x5t
        0x6t
        0x7t
        0x5t
        0xft
        0x6t
        0x7t
        0x2t
        0x3t
        0x23t
        0x9t
        0x8t
        0xat
        0xct
        0x9t
        0xat
        0x25t
        0xbt
        0x26t
        0x27t
        0x23t
        0x11t
        0x19t
        0x7t
        0x1ct
        0x10t
        0x1bt
        0x11t
        0x12t
        0x13t
        0x12t
        0x14t
        0x18t
        0x13t
        0x14t
        0x15t
        0x16t
        0x11t
        0x7t
        0x17t
        0x1at
        0x1dt
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x1dt
        0x1t
        0x20t
        0x1dt
        0x1t
        0x1et
        0x1dt
        0x1ft
        0x21t
        0x22t
        0x24t
        0x1dt
        0x1ft
        0xdt
        0xet
        0x28t
        0x24t
        0x8t
        0x24t
        0x1dt
        0x1ft
    .end array-data
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

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

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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
    new-instance p0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal escaped character: \\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

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

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract p(I)V
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

.method public parse(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

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

.method public parse(Ljava/io/Reader;)V
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

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

.method public parse(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->parse([CII)V

    return-void
.end method

.method public parse([CII)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v4, 0x1

    iput v4, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b:I

    const/16 v0, 0x1d

    move/from16 v10, p2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    const-string v9, " data["

    const-string v6, "=\""

    const-string v7, "null"

    const-string v8, " taskName: "

    const-string v5, "false"

    const-string v4, "endLine: indent: "

    move-object/from16 p2, v12

    const-string v12, "# Comment"

    move/from16 v26, v13

    const-string v13, "true"

    move/from16 v27, v14

    const-string v14, "double: "

    move/from16 v28, v15

    const-string v15, "boolean: "

    move-object/from16 v29, v6

    const-string v6, "string: "

    move-object/from16 v30, v14

    const-string v14, "\""

    move-object/from16 v32, v7

    const-string v7, "="

    move-object/from16 v33, v5

    const-string v5, "BehaviorTreeReader"

    if-eqz v11, :cond_3

    move-object/from16 v34, v15

    const/4 v15, 0x1

    if-eq v11, v15, :cond_2

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1

    const/4 v15, 0x4

    if-eq v11, v15, :cond_0

    :goto_1
    move-object/from16 v12, p2

    :goto_2
    move/from16 v13, v26

    goto/16 :goto_40

    :cond_0
    move/from16 v24, v0

    move-object v0, v6

    move-object/from16 v35, v8

    move-object/from16 v37, v13

    move-object v13, v14

    move/from16 v8, v16

    move/from16 v14, v27

    move-object/from16 v11, v29

    move-object/from16 v15, v30

    move-object/from16 v6, p2

    move-object/from16 v30, v9

    :goto_3
    move-object/from16 v9, v21

    goto/16 :goto_29

    :cond_1
    move/from16 v24, v0

    move-object v0, v6

    move-object/from16 v35, v8

    move-object/from16 v37, v13

    move-object v13, v14

    move/from16 v14, v27

    move-object/from16 v11, v29

    move-object/from16 v15, v30

    move-object/from16 v6, p2

    move-object/from16 v30, v9

    goto/16 :goto_27

    :cond_2
    const/4 v15, 0x4

    goto :goto_4

    :cond_3
    move-object/from16 v34, v15

    const/4 v15, 0x4

    if-ne v10, v3, :cond_4

    move-object/from16 v12, p2

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    const/4 v4, 0x1

    const/4 v11, 0x4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    move-object/from16 v12, p2

    move/from16 v13, v26

    move/from16 v14, v27

    goto/16 :goto_28

    :cond_5
    :goto_4
    :try_start_0
    sget-object v11, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->e:[S

    aget-short v11, v11, v0

    sget-object v24, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->i:[S

    aget-short v24, v24, v0

    sget-object v35, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->g:[B

    aget-byte v35, v35, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_17

    if-lez v35, :cond_9

    add-int v36, v11, v35

    add-int/lit8 v37, v36, -0x1

    move/from16 v15, v37

    move-object/from16 v37, v13

    move v13, v11

    :goto_5
    if-ge v15, v13, :cond_6

    add-int v24, v24, v35

    move/from16 v11, v36

    goto :goto_6

    :cond_6
    sub-int v38, v15, v13

    const/16 v25, 0x1

    shr-int/lit8 v38, v38, 0x1

    add-int v38, v13, v38

    move/from16 v39, v13

    :try_start_1
    aget-char v13, v2, v10

    sget-object v40, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->f:[C

    move/from16 v41, v15

    aget-char v15, v40, v38
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v13, v15, :cond_7

    add-int/lit8 v15, v38, -0x1

    move/from16 v13, v39

    goto :goto_5

    :cond_7
    if-le v13, v15, :cond_8

    add-int/lit8 v13, v38, 0x1

    move/from16 v15, v41

    goto :goto_5

    :cond_8
    sub-int v38, v38, v11

    add-int v24, v24, v38

    goto :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_41

    :cond_9
    move-object/from16 v37, v13

    :goto_6
    :try_start_2
    sget-object v13, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->h:[B

    aget-byte v0, v13, v0

    if-lez v0, :cond_d

    shl-int/lit8 v13, v0, 0x1

    add-int/2addr v13, v11

    const/4 v15, 0x2

    sub-int/2addr v13, v15

    move v15, v11

    :goto_7
    if-ge v13, v15, :cond_a

    add-int v24, v24, v0

    goto :goto_9

    :cond_a
    sub-int v31, v13, v15

    const/16 v25, 0x1

    shr-int/lit8 v31, v31, 0x1

    and-int/lit8 v31, v31, -0x2

    add-int v31, v15, v31

    move/from16 v35, v0

    aget-char v0, v2, v10

    sget-object v36, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->f:[C
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_17

    move/from16 v38, v10

    :try_start_3
    aget-char v10, v36, v31

    if-ge v0, v10, :cond_b

    add-int/lit8 v13, v31, -0x2

    :goto_8
    move/from16 v0, v35

    move/from16 v10, v38

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v31, 0x1

    aget-char v10, v36, v10

    if-le v0, v10, :cond_c

    add-int/lit8 v15, v31, 0x2

    goto :goto_8

    :cond_c
    sub-int v31, v31, v11

    const/4 v10, 0x1

    shr-int/lit8 v0, v31, 0x1

    add-int v24, v24, v0

    goto :goto_a

    :cond_d
    :goto_9
    move/from16 v38, v10

    :goto_a
    sget-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->j:[B

    aget-byte v0, v0, v24

    sget-object v10, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->k:[B

    aget-byte v10, v10, v0

    sget-object v11, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->l:[B

    aget-byte v0, v11, v0

    if-eqz v0, :cond_2b

    sget-object v11, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d:[B

    add-int/lit8 v13, v0, 0x1

    aget-byte v0, v11, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_16

    move-object/from16 v35, v6

    move-object/from16 v31, v7

    move/from16 v24, v10

    move v15, v13

    move-object/from16 v36, v14

    move/from16 v7, v16

    move/from16 v6, v19

    move/from16 v14, v20

    move-object/from16 v42, v21

    move/from16 v10, v28

    move/from16 v11, v38

    move-object/from16 v13, p2

    :goto_b
    add-int/lit8 v16, v0, -0x1

    if-lez v0, :cond_2a

    :try_start_4
    sget-object v0, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d:[B

    add-int/lit8 v19, v15, 0x1

    aget-byte v0, v0, v15
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_b

    packed-switch v0, :pswitch_data_0

    :cond_e
    :goto_c
    move/from16 v20, v6

    move/from16 v28, v7

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    move-object/from16 v13, v36

    move-object/from16 v6, v42

    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v11

    move-object/from16 v11, v29

    goto/16 :goto_24

    :pswitch_0
    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/4 v14, 0x0

    goto :goto_d

    :pswitch_1
    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/4 v14, 0x1

    goto :goto_d

    :pswitch_2
    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/4 v6, 0x1

    goto :goto_d

    :pswitch_3
    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/4 v6, 0x0

    :goto_d
    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v11

    goto/16 :goto_f

    :pswitch_4
    :try_start_5
    new-instance v0, Ljava/lang/String;

    sub-int v15, v11, v10

    invoke-direct {v0, v2, v10, v15}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v42, v0

    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    goto :goto_d

    :pswitch_5
    add-int/lit8 v0, v27, 0x1

    if-gez v27, :cond_f

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->p(I)V

    goto :goto_e

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->e()V

    :goto_e
    new-instance v15, Ljava/lang/String;

    move/from16 p2, v0

    sub-int v0, v11, v10

    invoke-direct {v15, v2, v10, v0}, Ljava/lang/String;-><init>([CII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual {v1, v15, v6, v14}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->q(Ljava/lang/String;ZZ)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v27, p2

    move/from16 v28, v7

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    move-object/from16 v13, v36

    const/4 v14, 0x0

    move-object/from16 v35, v8

    move/from16 v31, v11

    move-object v8, v15

    move-object/from16 v11, v29

    move-object/from16 v15, v30

    move-object/from16 v30, v9

    goto/16 :goto_25

    :catch_1
    move-exception v0

    move-object v7, v0

    move v10, v11

    move-object v6, v15

    goto/16 :goto_43

    :pswitch_6
    :try_start_7
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->c:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/String;

    sub-int v15, v11, v10

    invoke-direct {v0, v2, v10, v15}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_10
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    invoke-interface {v0, v5, v12}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v7, v0

    move v10, v11

    move-object v6, v13

    goto/16 :goto_43

    :pswitch_7
    move/from16 v28, v7

    move v10, v11

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v10

    :goto_f
    move-object v8, v13

    move-object/from16 v11, v29

    move-object/from16 v13, v36

    goto/16 :goto_25

    :pswitch_8
    if-ltz v27, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->e()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_11
    if-eqz v13, :cond_12

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_10

    :catch_3
    move-exception v0

    move-object v7, v0

    move v10, v11

    move-object v6, v13

    goto/16 :goto_34

    :cond_12
    :goto_10
    :try_start_9
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v20, v6

    const-string v6, "] = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    if-lt v11, v3, :cond_13

    :try_start_a
    const-string v6, "EOF"
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v13, v36

    goto :goto_11

    :cond_13
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5

    move-object/from16 p2, v13

    move-object/from16 v13, v36

    :try_start_c
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v14

    aget-char v14, v2, v11

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_11
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_13

    :cond_14
    move/from16 v20, v6

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v13, v36

    :goto_12
    move/from16 v28, v7

    move/from16 v6, v20

    move/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/16 v26, 0x1

    goto :goto_14

    :catch_5
    move-exception v0

    move-object/from16 p2, v13

    :goto_13
    move-object/from16 v6, p2

    move-object v7, v0

    move v10, v11

    goto/16 :goto_34

    :pswitch_9
    move/from16 v20, v6

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v13, v36

    add-int/lit8 v7, v7, 0x1

    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    :goto_14
    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v11

    :goto_15
    move-object/from16 v11, v29

    move-object/from16 v8, p2

    goto/16 :goto_25

    :pswitch_a
    move-object/from16 v13, v36

    :try_start_d
    iget v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b:I

    const/4 v6, 0x1

    add-int/2addr v0, v6

    iput v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b:I

    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "****NEWLINE**** "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    :cond_15
    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v11

    move-object/from16 v11, v29

    const/4 v8, 0x0

    goto/16 :goto_25

    :catch_6
    move-exception v0

    move-object v7, v0

    move v10, v11

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_44

    :pswitch_b
    move/from16 v20, v6

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v13, v36

    :try_start_e
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    const-string v6, "quotedChars"

    invoke-interface {v0, v5, v6}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7

    :cond_16
    add-int/lit8 v11, v11, 0x1

    move v10, v11

    const/4 v15, 0x0

    :cond_17
    :try_start_f
    aget-char v0, v2, v10
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    const/16 v6, 0x22

    if-eq v0, v6, :cond_19

    const/16 v6, 0x5c

    if-eq v0, v6, :cond_18

    const/4 v6, 0x1

    goto :goto_16

    :cond_18
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    const/4 v15, 0x1

    :goto_16
    add-int/2addr v10, v6

    if-ne v10, v3, :cond_17

    goto :goto_17

    :cond_19
    const/4 v6, 0x1

    :goto_17
    const/4 v0, -0x1

    add-int/2addr v10, v0

    move/from16 v28, v7

    move/from16 v17, v15

    move/from16 v6, v20

    move/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    goto :goto_19

    :pswitch_c
    move/from16 v20, v6

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v13, v36

    const/4 v6, 0x1

    :try_start_10
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    const-string v10, "unquotedChars"

    invoke-interface {v0, v5, v10}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_1a
    move v10, v11

    const/4 v15, 0x0

    :cond_1b
    :try_start_11
    aget-char v0, v2, v10
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    const/16 v14, 0x9

    if-eq v0, v14, :cond_1d

    const/16 v14, 0xa

    if-eq v0, v14, :cond_1d

    const/16 v14, 0xd

    if-eq v0, v14, :cond_1d

    const/16 v14, 0x20

    if-eq v0, v14, :cond_1d

    const/16 v14, 0x5c

    if-eq v0, v14, :cond_1c

    const/16 v14, 0x28

    if-eq v0, v14, :cond_1d

    const/16 v14, 0x29

    if-eq v0, v14, :cond_1d

    goto :goto_18

    :cond_1c
    const/4 v15, 0x1

    :goto_18
    add-int/lit8 v10, v10, 0x1

    if-ne v10, v3, :cond_1b

    :cond_1d
    const/4 v0, -0x1

    add-int/2addr v10, v0

    move/from16 v28, v7

    move/from16 v17, v15

    move/from16 v6, v20

    move/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    const/16 v18, 0x1

    :goto_19
    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v10

    move v10, v11

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object/from16 v6, p2

    move-object v7, v0

    move v10, v11

    goto/16 :goto_43

    :pswitch_d
    move/from16 v20, v6

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v13, v36

    const/4 v0, -0x1

    const/4 v6, 0x1

    :try_start_12
    new-instance v14, Ljava/lang/String;

    sub-int v15, v11, v10

    invoke-direct {v14, v2, v10, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_a

    if-eqz v17, :cond_1e

    :try_start_13
    invoke-static {v14}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_7

    :cond_1e
    if-eqz v18, :cond_28

    :try_start_14
    iget-boolean v10, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_a

    if-eqz v10, :cond_1f

    :try_start_15
    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v42

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v28, v7

    move-object/from16 v7, v31

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v5, v15}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_7

    goto :goto_1a

    :cond_1f
    move/from16 v28, v7

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    move-object/from16 v6, v42

    :goto_1a
    move-object/from16 v15, v37

    :try_start_16
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget-boolean v10, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v10, :cond_20

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_a

    move/from16 v31, v11

    move-object/from16 v11, v34

    :try_start_17
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v37, v15

    const-string v15, "=true"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v5, v14}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_20
    move/from16 v31, v11

    move-object/from16 v37, v15

    move-object/from16 v11, v34

    :goto_1b
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v10}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1c
    move-object/from16 v35, v8

    move-object/from16 v34, v11

    :goto_1d
    move-object/from16 v11, v29

    move-object/from16 v15, v30

    move-object/from16 v30, v9

    goto/16 :goto_23

    :cond_21
    move/from16 v31, v11

    move-object/from16 v37, v15

    move-object/from16 v11, v34

    move-object/from16 v15, v33

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    iget-boolean v10, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v10, :cond_22

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v15

    const-string v15, "=false"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v5, v14}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_22
    move-object/from16 v33, v15

    :goto_1e
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v10}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_23
    move-object/from16 v33, v15

    move-object/from16 v15, v32

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_9

    move-object/from16 v35, v8

    move-object/from16 v34, v11

    move-object/from16 v32, v15

    goto :goto_1d

    :cond_24
    :try_start_18
    invoke-static {v14}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    iget-boolean v10, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v10, :cond_25

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v10

    move-object/from16 v32, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v11

    move-object/from16 v11, v30

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v35, v8

    move-object/from16 v30, v9

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v5, v8}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_25
    move-object/from16 v35, v8

    move-object/from16 v34, v11

    move-object/from16 v32, v15

    move-object/from16 v11, v30

    move-object/from16 v30, v9

    :goto_1f
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v14}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v15, v11

    goto :goto_21

    :cond_26
    move-object/from16 v35, v8

    move-object/from16 v34, v11

    move-object/from16 v32, v15

    move-object/from16 v11, v30

    move-object/from16 v30, v9

    iget-boolean v8, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v8, :cond_27

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v11

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_27
    move-object v15, v11

    :goto_20
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v14}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9

    :goto_21
    move-object/from16 v11, v29

    goto :goto_23

    :catch_8
    :try_start_19
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Attribute value must be a number, a boolean, a string or null"

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move/from16 v28, v7

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    move-object/from16 v6, v42

    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v11

    iget-boolean v8, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v8, :cond_29

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v29

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_29
    move-object/from16 v11, v29

    :goto_22
    invoke-virtual {v1, v6, v14}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_9

    :goto_23
    move-object/from16 v8, p2

    move-object/from16 v42, v6

    move/from16 v6, v20

    move/from16 v14, v21

    move/from16 v10, v31

    const/16 v18, 0x0

    goto :goto_25

    :catch_9
    move-exception v0

    goto :goto_26

    :catch_a
    move-exception v0

    move/from16 v31, v11

    goto :goto_26

    :goto_24
    move-object/from16 v8, p2

    move-object/from16 v42, v6

    move/from16 v6, v20

    move/from16 v14, v21

    :goto_25
    move-object/from16 v29, v11

    move-object/from16 v36, v13

    move-object/from16 v9, v30

    move/from16 v11, v31

    move-object/from16 v31, v7

    move-object v13, v8

    move-object/from16 v30, v15

    move/from16 v15, v19

    move/from16 v7, v28

    move-object/from16 v8, v35

    move-object/from16 v35, v0

    move/from16 v0, v16

    goto/16 :goto_b

    :catch_b
    move-exception v0

    move/from16 v31, v11

    move-object/from16 p2, v13

    :goto_26
    move-object/from16 v6, p2

    move-object v7, v0

    move/from16 v4, v26

    move/from16 v10, v31

    goto/16 :goto_44

    :cond_2a
    move/from16 v20, v6

    move/from16 v28, v7

    move-object/from16 p2, v13

    move/from16 v21, v14

    move-object/from16 v15, v30

    move-object/from16 v7, v31

    move-object/from16 v0, v35

    move-object/from16 v13, v36

    move-object/from16 v6, v42

    move-object/from16 v35, v8

    move-object/from16 v30, v9

    move/from16 v31, v11

    move-object/from16 v11, v29

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v14, v27

    move/from16 v16, v28

    move-object/from16 v21, v6

    move/from16 v28, v10

    move/from16 v10, v31

    move-object/from16 v6, p2

    goto :goto_27

    :cond_2b
    move-object v0, v6

    move-object/from16 v35, v8

    move/from16 v24, v10

    move-object v13, v14

    move-object/from16 v11, v29

    move-object/from16 v15, v30

    move-object/from16 v30, v9

    move-object/from16 v6, p2

    move/from16 v14, v27

    move/from16 v10, v38

    :goto_27
    if-nez v24, :cond_2c

    move-object v12, v6

    move/from16 v0, v24

    move/from16 v13, v26

    :goto_28
    move/from16 v15, v28

    const/4 v4, 0x1

    const/4 v11, 0x5

    goto/16 :goto_0

    :cond_2c
    add-int/lit8 v10, v10, 0x1

    if-eq v10, v3, :cond_2d

    move-object v12, v6

    move/from16 v0, v24

    move/from16 v13, v26

    move/from16 v15, v28

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2d
    move/from16 v8, v16

    goto/16 :goto_3

    :goto_29
    if-ne v10, v3, :cond_49

    :try_start_1a
    sget-object v16, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->m:[B

    aget-byte v16, v16, v24

    sget-object v21, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d:[B

    add-int/lit8 v23, v16, 0x1

    aget-byte v16, v21, v16
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_15

    move-object/from16 v31, v7

    move-object/from16 v29, v11

    move/from16 v11, v20

    move/from16 v7, v28

    move/from16 v43, v16

    move-object/from16 v16, v15

    move/from16 v15, v19

    move/from16 v19, v18

    move/from16 v18, v43

    :goto_2a
    add-int/lit8 v20, v18, -0x1

    if-lez v18, :cond_48

    :try_start_1b
    sget-object v18, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d:[B

    add-int/lit8 v21, v23, 0x1

    move-object/from16 v24, v9

    aget-byte v9, v18, v23
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_14

    if-eqz v9, :cond_3b

    move-object/from16 v18, v0

    const/4 v0, 0x5

    if-eq v9, v0, :cond_36

    const/4 v0, 0x6

    if-eq v9, v0, :cond_35

    const/4 v0, 0x7

    if-eq v9, v0, :cond_32

    const/16 v0, 0x8

    if-eq v9, v0, :cond_30

    const/16 v0, 0xa

    if-eq v9, v0, :cond_2f

    const/16 v0, 0xb

    if-eq v9, v0, :cond_2e

    goto/16 :goto_2c

    :cond_2e
    move-object/from16 v23, v4

    move-object v0, v6

    move-object/from16 v6, v16

    move/from16 v4, v19

    move-object/from16 v9, v24

    const/4 v15, 0x1

    goto/16 :goto_2d

    :cond_2f
    move-object/from16 v23, v4

    move-object v0, v6

    move-object/from16 v6, v16

    move/from16 v4, v19

    move-object/from16 v9, v24

    const/4 v15, 0x0

    goto :goto_2d

    :cond_30
    add-int/lit8 v0, v14, 0x1

    if-gez v14, :cond_31

    :try_start_1c
    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->p(I)V

    goto :goto_2b

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->e()V

    :goto_2b
    new-instance v9, Ljava/lang/String;

    sub-int v14, v10, v7

    invoke-direct {v9, v2, v7, v14}, Ljava/lang/String;-><init>([CII)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_d

    :try_start_1d
    invoke-virtual {v1, v9, v15, v11}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->q(Ljava/lang/String;ZZ)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_c

    move v14, v0

    move-object/from16 v23, v4

    move-object v0, v9

    move-object/from16 v6, v16

    move/from16 v4, v19

    move-object/from16 v9, v24

    move-object/from16 v11, v29

    const/16 v24, 0x0

    move/from16 v19, v10

    move-object/from16 v16, v12

    goto :goto_2e

    :catch_c
    move-exception v0

    move-object v7, v0

    move-object v6, v9

    goto/16 :goto_43

    :cond_32
    :try_start_1e
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->c:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/String;

    sub-int v9, v10, v7

    invoke-direct {v0, v2, v7, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b(Ljava/lang/String;)V

    goto :goto_2c

    :cond_33
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    invoke-interface {v0, v5, v12}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_2c
    move-object/from16 v23, v4

    move-object v0, v6

    move-object/from16 v6, v16

    move/from16 v4, v19

    move-object/from16 v9, v24

    :goto_2d
    move/from16 v19, v10

    move/from16 v24, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v29

    :goto_2e
    move v10, v7

    move-object/from16 v7, v18

    move/from16 v18, v8

    :goto_2f
    move-object/from16 v8, v31

    goto/16 :goto_3e

    :catch_d
    move-exception v0

    goto/16 :goto_42

    :cond_35
    move-object/from16 v23, v4

    move-object v0, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move/from16 v4, v19

    move-object/from16 v9, v24

    move/from16 v18, v8

    move/from16 v19, v10

    move/from16 v24, v11

    move-object/from16 v16, v12

    move-object/from16 v11, v29

    goto :goto_2f

    :cond_36
    if-ltz v14, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->e()V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_d

    :cond_37
    if-eqz v6, :cond_38

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->d()V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_e

    goto :goto_30

    :catch_e
    move-exception v0

    goto/16 :goto_33

    :cond_38
    :goto_30
    :try_start_20
    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v23, v4

    move-object/from16 v4, v35

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v35, v4

    move-object/from16 v4, v30

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v30, v4

    const-string v4, "] = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_10

    if-lt v10, v3, :cond_39

    :try_start_21
    const-string v4, "EOF"
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_e

    move-object/from16 p2, v6

    goto :goto_31

    :cond_39
    :try_start_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_10

    move-object/from16 p2, v6

    :try_start_23
    aget-char v6, v2, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_31
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_f

    goto :goto_32

    :catch_f
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_33

    :cond_3a
    move-object/from16 v23, v4

    move-object/from16 p2, v6

    :goto_32
    move-object/from16 v0, p2

    move-object/from16 v6, v16

    move/from16 v4, v19

    move-object/from16 v9, v24

    const/16 v26, 0x1

    goto/16 :goto_2d

    :catch_10
    move-exception v0

    move-object/from16 p2, v6

    :goto_33
    move-object v7, v0

    :goto_34
    const/4 v4, 0x1

    goto/16 :goto_44

    :cond_3b
    move-object/from16 v18, v0

    move-object/from16 v23, v4

    move-object/from16 p2, v6

    :try_start_24
    new-instance v0, Ljava/lang/String;

    sub-int v4, v10, v7

    invoke-direct {v0, v2, v7, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_13

    if-eqz v17, :cond_3c

    :try_start_25
    invoke-static {v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_0

    :cond_3c
    if-eqz v19, :cond_46

    :try_start_26
    iget-boolean v4, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_13

    if-eqz v4, :cond_3d

    :try_start_27
    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v24

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v8

    move-object/from16 v8, v31

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_0

    goto :goto_35

    :cond_3d
    move-object/from16 v7, v18

    move-object/from16 v9, v24

    move/from16 v18, v8

    move-object/from16 v8, v31

    :goto_35
    move-object/from16 v4, v37

    :try_start_28
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v4

    move-object/from16 v4, v34

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_13

    move/from16 v19, v10

    :try_start_29
    const-string v10, "=true"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_3e
    move-object/from16 v37, v4

    move/from16 v19, v10

    move-object/from16 v4, v34

    :goto_36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v9, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v34, v4

    :goto_37
    move/from16 v24, v11

    move-object/from16 v6, v16

    move-object/from16 v11, v29

    move-object/from16 v16, v12

    goto/16 :goto_3d

    :cond_3f
    move-object/from16 v37, v4

    move/from16 v19, v10

    move-object/from16 v4, v34

    move-object/from16 v6, v33

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    iget-boolean v0, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v34, v4

    const-string v4, "=false"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_40
    move-object/from16 v34, v4

    :goto_38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v9, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_39

    :cond_41
    move-object/from16 v34, v4

    move-object/from16 v4, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_12

    move-object/from16 v32, v4

    :goto_39
    move-object/from16 v33, v6

    goto :goto_37

    :cond_42
    const/4 v10, 0x0

    :try_start_2a
    invoke-static {v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->c(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_44

    iget-boolean v10, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v10, :cond_43

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v10

    move-object/from16 v32, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v6

    move-object/from16 v6, v16

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v11

    move-object/from16 v16, v12

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v5, v4}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_43
    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move/from16 v24, v11

    move-object/from16 v6, v16

    move-object/from16 v16, v12

    :goto_3a
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v4}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3b

    :cond_44
    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move/from16 v24, v11

    move-object/from16 v6, v16

    move-object/from16 v16, v12

    iget-boolean v4, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v4, :cond_45

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v5, v10}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v4}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_12

    :goto_3b
    move-object/from16 v11, v29

    goto :goto_3d

    :catch_11
    :try_start_2b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Attribute value must be a number, a boolean, a string or null"

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    move/from16 v19, v10

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v9, v24

    move/from16 v18, v8

    move/from16 v24, v11

    move-object/from16 v16, v12

    move-object/from16 v8, v31

    iget-boolean v4, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a:Z

    if-eqz v4, :cond_47

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v5, v10}, Lcom/badlogic/gdx/ai/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_47
    move-object/from16 v11, v29

    :goto_3c
    invoke-virtual {v1, v9, v0}, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_12

    :goto_3d
    move-object/from16 v0, p2

    move/from16 v10, v19

    const/4 v4, 0x0

    :goto_3e
    move-object/from16 v31, v8

    move-object/from16 v29, v11

    move-object/from16 v12, v16

    move/from16 v8, v18

    move/from16 v18, v20

    move/from16 v11, v24

    move-object/from16 v16, v6

    move-object v6, v0

    move-object v0, v7

    move v7, v10

    move/from16 v10, v19

    move/from16 v19, v4

    move-object/from16 v4, v23

    move/from16 v23, v21

    goto/16 :goto_2a

    :catch_12
    move-exception v0

    move-object/from16 v6, p2

    move-object v7, v0

    move/from16 v10, v19

    goto :goto_43

    :catch_13
    move-exception v0

    move/from16 v19, v10

    goto :goto_41

    :catch_14
    move-exception v0

    move-object/from16 p2, v6

    goto :goto_3f

    :cond_48
    move-object/from16 p2, v6

    move/from16 v19, v10

    goto/16 :goto_1

    :catch_15
    move-exception v0

    :goto_3f
    move/from16 v19, v10

    goto :goto_42

    :cond_49
    move/from16 v19, v10

    move-object v12, v6

    goto/16 :goto_2

    :goto_40
    const/4 v7, 0x0

    goto :goto_45

    :catch_16
    move-exception v0

    move-object/from16 v6, p2

    move-object v7, v0

    move/from16 v4, v26

    move/from16 v10, v38

    goto :goto_44

    :catch_17
    move-exception v0

    move/from16 v38, v10

    :goto_41
    move-object/from16 v6, p2

    :goto_42
    move-object v7, v0

    :goto_43
    move/from16 v4, v26

    :goto_44
    move v13, v4

    move-object v12, v6

    :goto_45
    if-lt v10, v3, :cond_4c

    if-eqz v12, :cond_4a

    if-eqz v13, :cond_4c

    :cond_4a
    if-nez v7, :cond_4b

    return-void

    :cond_4b
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing behavior tree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4c
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing behavior tree on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/badlogic/gdx/ai/btree/utils/BehaviorTreeReader;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " near: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v3, v10

    invoke-direct {v5, v2, v10, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public abstract q(Ljava/lang/String;ZZ)V
.end method
