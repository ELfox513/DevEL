.class Lcom/prineside/tdi2/screens/AboutScreen$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AboutScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AboutScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AboutScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AboutScreen$4;->a:Lcom/prineside/tdi2/screens/AboutScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string v1, "https://tracker.prineside.com/set_project.php?project_id=1"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method
