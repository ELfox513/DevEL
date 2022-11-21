.class public interface abstract Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Refusing;,
        Lnet/bytebuddy/implementation/bytecode/assign/Assigner$EqualTypesOnly;,
        Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Safe initialization is implied."
    value = {
        "IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field public static final GENERICS_AWARE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/ReferenceTypeAwareAssigner;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/assign/reference/GenericTypeAwareAssigner;

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveTypeAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/assign/primitive/VoidAwareAssigner;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->GENERICS_AWARE:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method


# virtual methods
.method public abstract assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
