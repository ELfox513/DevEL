.class public abstract enum Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/MethodSortMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum CONSTRUCTOR:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum DEFAULT_METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum TYPE_INITIALIZER:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

.field public static final enum VIRTUAL:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;


# instance fields
.field private final description:Ljava/lang/String;

.field private final matcher:Lnet/bytebuddy/matcher/MethodSortMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/MethodSortMatcher<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$1;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    const-string v3, "isMethod()"

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    new-instance v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$2;

    const-string v3, "CONSTRUCTOR"

    const/4 v4, 0x1

    const-string v5, "isConstructor()"

    invoke-direct {v1, v3, v4, v5}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->CONSTRUCTOR:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    new-instance v3, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$3;

    const-string v5, "TYPE_INITIALIZER"

    const/4 v6, 0x2

    const-string v7, "isTypeInitializer()"

    invoke-direct {v3, v5, v6, v7}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->TYPE_INITIALIZER:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    new-instance v5, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$4;

    const-string v7, "VIRTUAL"

    const/4 v8, 0x3

    const-string v9, "isVirtual()"

    invoke-direct {v5, v7, v8, v9}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->VIRTUAL:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    new-instance v7, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$5;

    const-string v9, "DEFAULT_METHOD"

    const/4 v10, 0x4

    const-string v11, "isDefaultMethod()"

    invoke-direct {v7, v9, v10, v11}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->DEFAULT_METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    const/4 v9, 0x5

    new-array v9, v9, [Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->$VALUES:[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

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

    iput-object p3, p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->description:Ljava/lang/String;

    new-instance p1, Lnet/bytebuddy/matcher/MethodSortMatcher;

    invoke-direct {p1, p0}, Lnet/bytebuddy/matcher/MethodSortMatcher;-><init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V

    iput-object p1, p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->matcher:Lnet/bytebuddy/matcher/MethodSortMatcher;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lnet/bytebuddy/matcher/MethodSortMatcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->$VALUES:[Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMatcher()Lnet/bytebuddy/matcher/MethodSortMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/matcher/MethodSortMatcher<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->matcher:Lnet/bytebuddy/matcher/MethodSortMatcher;

    return-object v0
.end method

.method public abstract isSort(Lnet/bytebuddy/description/method/MethodDescription;)Z
.end method
