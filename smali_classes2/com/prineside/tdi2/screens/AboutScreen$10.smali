.class Lcom/prineside/tdi2/screens/AboutScreen$10;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AboutScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/AboutScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AboutScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AboutScreen$10;->o:Lcom/prineside/tdi2/screens/AboutScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string p2, "https://www.facebook.com/infinitodegame"

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method
