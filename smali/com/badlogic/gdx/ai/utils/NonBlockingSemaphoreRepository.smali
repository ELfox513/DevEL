.class public Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore$Factory;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore$Factory;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->b:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSemaphore(Ljava/lang/String;I)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->b:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;

    invoke-interface {v0, p0, p1}, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;->createSemaphore(Ljava/lang/String;I)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    return-void
.end method

.method public static getSemaphore(Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    return-object p0
.end method

.method public static removeSemaphore(Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->a:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    return-object p0
.end method

.method public static setFactory(Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;)V
    .locals 0

    sput-object p0, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->b:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;

    return-void
.end method
