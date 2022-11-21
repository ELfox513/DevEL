.class public Lnet/bytebuddy/matcher/BooleanMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final FALSE:Lnet/bytebuddy/matcher/BooleanMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/BooleanMatcher<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TRUE:Lnet/bytebuddy/matcher/BooleanMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/BooleanMatcher<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final matches:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    sput-object v0, Lnet/bytebuddy/matcher/BooleanMatcher;->TRUE:Lnet/bytebuddy/matcher/BooleanMatcher;

    new-instance v0, Lnet/bytebuddy/matcher/BooleanMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/BooleanMatcher;-><init>(Z)V

    sput-object v0, Lnet/bytebuddy/matcher/BooleanMatcher;->FALSE:Lnet/bytebuddy/matcher/BooleanMatcher;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    iput-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return-void
.end method

.method public static of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/matcher/BooleanMatcher;->TRUE:Lnet/bytebuddy/matcher/BooleanMatcher;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/matcher/BooleanMatcher;->FALSE:Lnet/bytebuddy/matcher/BooleanMatcher;

    :goto_0
    return-object p0
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
    iget-boolean v2, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    check-cast p1, Lnet/bytebuddy/matcher/BooleanMatcher;

    iget-boolean p1, p1, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean p1, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/matcher/BooleanMatcher;->matches:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
