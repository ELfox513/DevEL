.class public Lnet/bytebuddy/build/DispatcherAnnotationPlugin;
.super Lnet/bytebuddy/build/Plugin$ForElementMatcher;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/build/Plugin$ForElementMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    new-instance p2, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    invoke-direct {p2}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>()V

    invoke-virtual {p2, p0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object p2

    const-class p3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p3, v0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 1

    const-class p3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "value"

    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/build/Plugin$ForElementMatcher;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/build/Plugin$ForElementMatcher;->hashCode()I

    move-result v0

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .locals 0

    return-object p0
.end method
