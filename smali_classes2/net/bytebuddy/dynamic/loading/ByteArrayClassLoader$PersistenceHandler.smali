.class public abstract enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "PersistenceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

.field private static final CLASS_FILE_SUFFIX:Ljava/lang/String; = ".class"

.field public static final enum LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

.field public static final enum MANIFEST:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;


# instance fields
.field private final manifest:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$1;

    const-string v1, "MANIFEST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->MANIFEST:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    new-instance v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$2;

    const-string v4, "LATENT"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->LATENT:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->manifest:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;

    return-object v0
.end method


# virtual methods
.method public isManifest()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;->manifest:Z

    return v0
.end method

.method public abstract lookup(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract release(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method
