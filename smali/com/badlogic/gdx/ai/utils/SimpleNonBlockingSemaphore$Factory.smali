.class public Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSemaphore(Ljava/lang/String;I)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/ai/utils/SimpleNonBlockingSemaphore;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
