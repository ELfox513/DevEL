.class public Lz0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz0/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lx0/i;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->y()Lf1/h;

    move-result-object p1

    invoke-interface {p1, p2}, Lf1/h;->c(Ljava/lang/String;)Lf1/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lf1/g;->b:I

    invoke-static {p0, p2, v0}, Lz0/b;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object p0

    sget-object v0, Lz0/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Removing SystemIdInfo for workSpecId (%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, v2}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lf1/h;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x24000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000000

    :goto_0
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v1

    sget-object v2, Lz0/b;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, p2}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Lx0/i;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p1}, Lx0/i;->r()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->y()Lf1/h;

    move-result-object v0

    invoke-interface {v0, p2}, Lf1/h;->c(Ljava/lang/String;)Lf1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, v1, Lf1/g;->b:I

    invoke-static {p0, p2, p1}, Lz0/b;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget p1, v1, Lf1/g;->b:I

    invoke-static {p0, p2, p1, p3, p4}, Lz0/b;->d(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lg1/d;

    invoke-direct {v1, p1}, Lg1/d;-><init>(Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {v1}, Lg1/d;->b()I

    move-result p1

    new-instance v1, Lf1/g;

    invoke-direct {v1, p2, p1}, Lf1/g;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lf1/h;->b(Lf1/g;)V

    invoke-static {p0, p2, p1, p3, p4}, Lz0/b;->d(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/high16 v2, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x8000000

    :goto_0
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p2, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_2

    const/16 p1, 0x13

    const/4 p2, 0x0

    if-lt v1, p1, :cond_1

    invoke-static {v0, p2, p3, p4, p0}, Lz0/a;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    :goto_1
    return-void
.end method
