.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForImplicitRecordComponent"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/RecordComponentDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getGenericSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/RecordComponentVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->INSTANCE:Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-interface {p2, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$ForInstrumentedRecordComponent;->apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/description/type/RecordComponentDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/RecordComponentVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public apply(Lnet/bytebuddy/jar/asm/RecordComponentVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An implicit field record is not intended for partial application: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getRecordComponent()Lnet/bytebuddy/description/type/RecordComponentDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    return-object v0
.end method

.method public getRecordComponentAppender()Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An implicit field record does not expose a field appender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;->recordComponentDescription:Lnet/bytebuddy/description/type/RecordComponentDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isImplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
