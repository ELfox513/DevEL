.class public Ld/f$m;
.super Ld/f$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final c:Ld/o;

.field public final synthetic d:Ld/f;


# direct methods
.method public constructor <init>(Ld/f;Ld/o;)V
    .locals 0

    iput-object p1, p0, Ld/f$m;->d:Ld/f;

    invoke-direct {p0, p1}, Ld/f$l;-><init>(Ld/f;)V

    iput-object p2, p0, Ld/f$m;->c:Ld/o;

    return-void
.end method


# virtual methods
.method public b()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Ld/f$m;->c:Ld/o;

    invoke-virtual {v0}, Ld/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Ld/f$m;->d:Ld/f;

    invoke-virtual {v0}, Ld/f;->F()Z

    return-void
.end method
