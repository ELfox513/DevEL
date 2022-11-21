.class public Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodMatchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter$AnnotationAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$AbstractBase<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

.field private final matcher:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/matcher/LatentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$AbstractBase;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;)Lnet/bytebuddy/matcher/LatentMatcher;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    return-object p0
.end method

.method private materialize(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter$AnnotationAdapter;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter$AnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;)V

    return-object v0
.end method


# virtual methods
.method public defaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAnnotationValue;-><init>(Lnet/bytebuddy/description/annotation/AnnotationValue;)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->materialize(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->matcher:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->a:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/Implementation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;-><init>(Lnet/bytebuddy/implementation/Implementation;)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->materialize(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public withoutCode()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition<",
            "TU;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForAbstractMethod;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodMatchAdapter;->materialize(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    return-object v0
.end method
