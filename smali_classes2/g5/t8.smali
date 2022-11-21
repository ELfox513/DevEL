.class public final Lg5/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/v8;


# direct methods
.method public constructor <init>(Lg5/v8;)V
    .locals 0

    iput-object p1, p0, Lg5/t8;->a:Lg5/v8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lg5/t8;->a:Lg5/v8;

    iget-object v0, v0, Lg5/v8;->d:Lg5/w8;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lg5/t8;->a:Lg5/v8;

    iget-object v3, v3, Lg5/v8;->d:Lg5/w8;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->G()Lg5/b;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lg5/w8;->J(Lg5/w8;Landroid/content/ComponentName;)V

    return-void
.end method
