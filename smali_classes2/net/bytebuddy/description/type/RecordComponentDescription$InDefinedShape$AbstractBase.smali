.class public abstract Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;
.super Lnet/bytebuddy/description/type/RecordComponentDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;->asDefined()Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;
    .locals 0

    return-object p0
.end method

.method public getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2

    invoke-interface {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public bridge synthetic getAccessor()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;->getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method
