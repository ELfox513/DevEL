.class public final Lr4/mk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lr4/ok0;


# direct methods
.method public constructor <init>(Lr4/ok0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/mk0;->b:Lr4/ok0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/mk0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lr4/mk0;->b:Lr4/ok0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/mk0;->b:Lr4/ok0;

    invoke-static {v1}, Lr4/ok0;->a(Lr4/ok0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/nk0;

    iget-object v3, p0, Lr4/mk0;->a:Ljava/lang/String;

    invoke-interface {v2, p1, v3, p2}, Lr4/nk0;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
