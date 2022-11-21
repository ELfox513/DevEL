.class public final enum Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForSelfDeclaredMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;",
        ">;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

.field public static final enum DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

.field public static final enum NOT_DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;


# instance fields
.field private final inverted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    const-string v1, "DECLARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    new-instance v1, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    const-string v3, "NOT_DECLARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->NOT_DECLARED:Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->$VALUES:[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

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

    iput-boolean p3, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->inverted:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
    .locals 1

    const-class v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;
    .locals 1

    sget-object v0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->$VALUES:[Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;

    return-object v0
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForSelfDeclaredMethod;->inverted:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    :goto_0
    return-object p1
.end method
