.class public abstract enum Lnet/bytebuddy/TypeCache$Sort;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/TypeCache$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/TypeCache$Sort;

.field public static final enum SOFT:Lnet/bytebuddy/TypeCache$Sort;

.field public static final enum STRONG:Lnet/bytebuddy/TypeCache$Sort;

.field public static final enum WEAK:Lnet/bytebuddy/TypeCache$Sort;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/bytebuddy/TypeCache$Sort$1;

    const-string v1, "WEAK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/TypeCache$Sort$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/TypeCache$Sort;->WEAK:Lnet/bytebuddy/TypeCache$Sort;

    new-instance v1, Lnet/bytebuddy/TypeCache$Sort$2;

    const-string v3, "SOFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/TypeCache$Sort$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/TypeCache$Sort;->SOFT:Lnet/bytebuddy/TypeCache$Sort;

    new-instance v3, Lnet/bytebuddy/TypeCache$Sort$3;

    const-string v5, "STRONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/bytebuddy/TypeCache$Sort$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/bytebuddy/TypeCache$Sort;->STRONG:Lnet/bytebuddy/TypeCache$Sort;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/bytebuddy/TypeCache$Sort;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lnet/bytebuddy/TypeCache$Sort;->$VALUES:[Lnet/bytebuddy/TypeCache$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/TypeCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/TypeCache$Sort;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/TypeCache$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/TypeCache$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/TypeCache$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/TypeCache$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/TypeCache$Sort;->$VALUES:[Lnet/bytebuddy/TypeCache$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/TypeCache$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/TypeCache$Sort;

    return-object v0
.end method


# virtual methods
.method public abstract wrap(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
