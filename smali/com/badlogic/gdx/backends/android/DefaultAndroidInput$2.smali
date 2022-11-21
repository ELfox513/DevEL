.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;->b:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;->c()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    move-result-object v0

    return-object v0
.end method
