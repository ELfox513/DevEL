.class Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;->a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;->a:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->x0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;->exit()V

    return-void
.end method
