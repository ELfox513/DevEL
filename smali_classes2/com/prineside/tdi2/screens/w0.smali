.class public final synthetic Lcom/prineside/tdi2/screens/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/w0;->a:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/w0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/w0;->a:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/w0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/SettingsScreen$40$1$1$1;->a(Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/String;)V

    return-void
.end method
