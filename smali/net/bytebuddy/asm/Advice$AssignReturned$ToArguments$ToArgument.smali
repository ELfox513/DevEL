.class public interface abstract annotation Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$ToArgument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$ToArgument;
        index = -0x1
        typing = .enum Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ToArgument"
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation

.annotation runtime Lnet/bytebuddy/build/RepeatedAnnotationPlugin$Enhance;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;
.end annotation


# virtual methods
.method public abstract index()I
.end method

.method public abstract typing()Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
.end method

.method public abstract value()I
.end method
