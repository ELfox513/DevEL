.class public Lnet/bytebuddy/asm/TypeReferenceAdjustment;
.super Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final strict:Z


# direct methods
.method public constructor <init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;-><init>()V

    iput-boolean p1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    iput-object p2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    return-void
.end method

.method public static relaxed()Lnet/bytebuddy/asm/TypeReferenceAdjustment;
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;-><init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method

.method public static strict()Lnet/bytebuddy/asm/TypeReferenceAdjustment;
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;-><init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method


# virtual methods
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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    check-cast p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object p1, p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/TypeReferenceAdjustment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/TypeReferenceAdjustment;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;

    iget-boolean v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    iget-object v2, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v2, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/asm/TypeReferenceAdjustment;-><init>(ZLnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    new-instance p1, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;

    iget-boolean p3, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->strict:Z

    iget-object p5, p0, Lnet/bytebuddy/asm/TypeReferenceAdjustment;->filter:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {p1, p2, p3, p5, p4}, Lnet/bytebuddy/asm/TypeReferenceAdjustment$TypeReferenceClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;ZLnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/pool/TypePool;)V

    return-object p1
.end method
