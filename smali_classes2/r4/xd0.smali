.class public final Lr4/xd0;
.super Lr4/fe0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/cs0;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/cs0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lr4/fe0;-><init>(Lr4/cs0;Ljava/lang/String;)V

    iput-object p2, p0, Lr4/xd0;->c:Ljava/util/Map;

    invoke-interface {p1}, Lr4/cs0;->h()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lr4/xd0;->d:Landroid/content/Context;

    const-string p1, "description"

    invoke-virtual {p0, p1}, Lr4/xd0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/xd0;->e:Ljava/lang/String;

    const-string p1, "summary"

    invoke-virtual {p0, p1}, Lr4/xd0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/xd0;->h:Ljava/lang/String;

    const-string p1, "start_ticks"

    invoke-virtual {p0, p1}, Lr4/xd0;->l(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/xd0;->f:J

    const-string p1, "end_ticks"

    invoke-virtual {p0, p1}, Lr4/xd0;->l(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/xd0;->g:J

    const-string p1, "location"

    invoke-virtual {p0, p1}, Lr4/xd0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/xd0;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Lr4/xd0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lr4/xd0;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final i()V
    .locals 4

    iget-object v0, p0, Lr4/xd0;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/xd0;->d:Landroid/content/Context;

    new-instance v1, Lr4/az;

    invoke-direct {v1, v0}, Lr4/az;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lr4/az;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lr4/fe0;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/xd0;->d:Landroid/content/Context;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->j()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v2, Lx2/a;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "Create calendar event"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_3

    sget v2, Lx2/a;->m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, "Allow Ad to create a calendar event?"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_4

    sget v2, Lx2/a;->j:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "Accept"

    :goto_2
    new-instance v3, Lr4/vd0;

    invoke-direct {v3, p0}, Lr4/vd0;-><init>(Lr4/xd0;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_5

    sget v2, Lx2/a;->k:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, "Decline"

    :goto_3
    new-instance v2, Lr4/wd0;

    invoke-direct {v2, p0}, Lr4/wd0;-><init>(Lr4/xd0;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final j()Landroid/content/Intent;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lr4/xd0;->e:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lr4/xd0;->i:Ljava/lang/String;

    const-string v2, "eventLocation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lr4/xd0;->h:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, p0, Lr4/xd0;->f:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v5, "beginTime"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-wide v1, p0, Lr4/xd0;->g:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/xd0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/xd0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public final l(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lr4/xd0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method
