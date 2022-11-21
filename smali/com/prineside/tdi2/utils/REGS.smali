.class public interface abstract annotation Lcom/prineside/tdi2/utils/REGS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/prineside/tdi2/utils/REGS;
        arrayLevels = 0x0
        classOnly = false
        serializer = Lcom/prineside/tdi2/serializers/GameStateSerializer;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract arrayLevels()I
.end method

.method public abstract classOnly()Z
.end method

.method public abstract serializer()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;"
        }
    .end annotation
.end method
