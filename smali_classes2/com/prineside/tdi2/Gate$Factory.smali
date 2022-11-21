.class public interface abstract Lcom/prineside/tdi2/Gate$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Gate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Gate$Factory$AbstractFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Gate;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# virtual methods
.method public abstract create()Lcom/prineside/tdi2/Gate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/math/RandomXS128;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getDescription(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;
.end method

.method public abstract getTitle(Lcom/prineside/tdi2/Gate;)Ljava/lang/CharSequence;
.end method

.method public abstract setup()V
.end method
