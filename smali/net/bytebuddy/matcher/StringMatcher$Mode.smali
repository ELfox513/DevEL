.class public abstract enum Lnet/bytebuddy/matcher/StringMatcher$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/StringMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/StringMatcher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field public static final enum STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnet/bytebuddy/matcher/StringMatcher$Mode$1;

    const-string v1, "EQUALS_FULLY"

    const/4 v2, 0x0

    const-string v3, "equals"

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/matcher/StringMatcher$Mode$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher$Mode$2;

    const-string v3, "EQUALS_FULLY_IGNORE_CASE"

    const/4 v4, 0x1

    const-string v5, "equalsIgnoreCase"

    invoke-direct {v1, v3, v4, v5}, Lnet/bytebuddy/matcher/StringMatcher$Mode$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v3, Lnet/bytebuddy/matcher/StringMatcher$Mode$3;

    const-string v5, "STARTS_WITH"

    const/4 v6, 0x2

    const-string v7, "startsWith"

    invoke-direct {v3, v5, v6, v7}, Lnet/bytebuddy/matcher/StringMatcher$Mode$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v5, Lnet/bytebuddy/matcher/StringMatcher$Mode$4;

    const-string v7, "STARTS_WITH_IGNORE_CASE"

    const/4 v8, 0x3

    const-string v9, "startsWithIgnoreCase"

    invoke-direct {v5, v7, v8, v9}, Lnet/bytebuddy/matcher/StringMatcher$Mode$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v7, Lnet/bytebuddy/matcher/StringMatcher$Mode$5;

    const-string v9, "ENDS_WITH"

    const/4 v10, 0x4

    const-string v11, "endsWith"

    invoke-direct {v7, v9, v10, v11}, Lnet/bytebuddy/matcher/StringMatcher$Mode$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v9, Lnet/bytebuddy/matcher/StringMatcher$Mode$6;

    const-string v11, "ENDS_WITH_IGNORE_CASE"

    const/4 v12, 0x5

    const-string v13, "endsWithIgnoreCase"

    invoke-direct {v9, v11, v12, v13}, Lnet/bytebuddy/matcher/StringMatcher$Mode$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v11, Lnet/bytebuddy/matcher/StringMatcher$Mode$7;

    const-string v13, "CONTAINS"

    const/4 v14, 0x6

    const-string v15, "contains"

    invoke-direct {v11, v13, v14, v15}, Lnet/bytebuddy/matcher/StringMatcher$Mode$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v13, Lnet/bytebuddy/matcher/StringMatcher$Mode$8;

    const-string v15, "CONTAINS_IGNORE_CASE"

    const/4 v14, 0x7

    const-string v12, "containsIgnoreCase"

    invoke-direct {v13, v15, v14, v12}, Lnet/bytebuddy/matcher/StringMatcher$Mode$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    new-instance v12, Lnet/bytebuddy/matcher/StringMatcher$Mode$9;

    const-string v15, "MATCHES"

    const/16 v14, 0x8

    const-string v10, "matches"

    invoke-direct {v12, v15, v14, v10}, Lnet/bytebuddy/matcher/StringMatcher$Mode$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lnet/bytebuddy/matcher/StringMatcher$Mode;->MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    const/16 v10, 0x9

    new-array v10, v10, [Lnet/bytebuddy/matcher/StringMatcher$Mode;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lnet/bytebuddy/matcher/StringMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/matcher/StringMatcher$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/StringMatcher$Mode;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/StringMatcher$Mode;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->$VALUES:[Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/StringMatcher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/StringMatcher$Mode;->description:Ljava/lang/String;

    return-object v0
.end method

.method public abstract matches(Ljava/lang/String;Ljava/lang/String;)Z
.end method
