.class public final Lg5/g4;
.super Lg5/w5;
.source "SourceFile"


# static fields
.field public static final x:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Landroid/content/SharedPreferences;

.field public d:Lg5/d4;

.field public final e:Lg5/b4;

.field public final f:Lg5/b4;

.field public final g:Lg5/e4;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:J

.field public final k:Lg5/b4;

.field public final l:Lg5/z3;

.field public final m:Lg5/e4;

.field public final n:Lg5/z3;

.field public final o:Lg5/b4;

.field public p:Z

.field public final q:Lg5/z3;

.field public final r:Lg5/z3;

.field public final s:Lg5/b4;

.field public final t:Lg5/e4;

.field public final u:Lg5/e4;

.field public final v:Lg5/b4;

.field public final w:Lg5/a4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lg5/g4;->x:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lg5/b5;)V
    .locals 5

    invoke-direct {p0, p1}, Lg5/w5;-><init>(Lg5/b5;)V

    new-instance p1, Lg5/b4;

    const-string v0, "session_timeout"

    const-wide/32 v1, 0x1b7740

    invoke-direct {p1, p0, v0, v1, v2}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/g4;->k:Lg5/b4;

    new-instance p1, Lg5/z3;

    const-string v0, "start_new_session"

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lg5/z3;-><init>(Lg5/g4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg5/g4;->l:Lg5/z3;

    new-instance p1, Lg5/b4;

    const-string v0, "last_pause_time"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/g4;->o:Lg5/b4;

    new-instance p1, Lg5/e4;

    const-string v0, "non_personalized_ads"

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, Lg5/e4;-><init>(Lg5/g4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lg5/g4;->m:Lg5/e4;

    new-instance p1, Lg5/z3;

    const-string v0, "allow_remote_dynamite"

    const/4 v4, 0x0

    invoke-direct {p1, p0, v0, v4}, Lg5/z3;-><init>(Lg5/g4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg5/g4;->n:Lg5/z3;

    new-instance p1, Lg5/b4;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/g4;->e:Lg5/b4;

    new-instance p1, Lg5/b4;

    const-string v0, "app_install_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/g4;->f:Lg5/b4;

    new-instance p1, Lg5/e4;

    const-string v0, "app_instance_id"

    invoke-direct {p1, p0, v0, v3}, Lg5/e4;-><init>(Lg5/g4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lg5/g4;->g:Lg5/e4;

    new-instance p1, Lg5/z3;

    const-string v0, "app_backgrounded"

    invoke-direct {p1, p0, v0, v4}, Lg5/z3;-><init>(Lg5/g4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg5/g4;->q:Lg5/z3;

    new-instance p1, Lg5/z3;

    const-string v0, "deep_link_retrieval_complete"

    invoke-direct {p1, p0, v0, v4}, Lg5/z3;-><init>(Lg5/g4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lg5/g4;->r:Lg5/z3;

    new-instance p1, Lg5/b4;

    const-string v0, "deep_link_retrieval_attempts"

    invoke-direct {p1, p0, v0, v1, v2}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/g4;->s:Lg5/b4;

    new-instance p1, Lg5/e4;

    const-string v0, "firebase_feature_rollouts"

    invoke-direct {p1, p0, v0, v3}, Lg5/e4;-><init>(Lg5/g4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lg5/g4;->t:Lg5/e4;

    new-instance p1, Lg5/e4;

    const-string v0, "deferred_attribution_cache"

    invoke-direct {p1, p0, v0, v3}, Lg5/e4;-><init>(Lg5/g4;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lg5/g4;->u:Lg5/e4;

    new-instance p1, Lg5/b4;

    const-string v0, "deferred_attribution_cache_timestamp"

    invoke-direct {p1, p0, v0, v1, v2}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/g4;->v:Lg5/b4;

    new-instance p1, Lg5/a4;

    const-string v0, "default_event_parameters"

    invoke-direct {p1, p0, v0, v3}, Lg5/a4;-><init>(Lg5/g4;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lg5/g4;->w:Lg5/a4;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 9

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lg5/g4;->c:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lg5/g4;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/g4;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lg5/d4;

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const-wide/16 v1, 0x0

    sget-object v3, Lg5/c3;->d:Lg5/b3;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lg5/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lg5/d4;-><init>(Lg5/g4;Ljava/lang/String;JLg5/c4;)V

    iput-object v0, p0, Lg5/g4;->d:Lg5/d4;

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/w5;->f()V

    iget-object v0, p0, Lg5/g4;->c:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/g4;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iget-object v3, p0, Lg5/g4;->h:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lg5/g4;->j:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lg5/g4;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->u()Lg5/g;

    move-result-object v3

    sget-object v4, Lg5/c3;->c:Lg5/b3;

    invoke-virtual {v3, p1, v4}, Lg5/g;->m(Ljava/lang/String;Lg5/b3;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lg5/g4;->j:J

    const/4 p1, 0x1

    invoke-static {p1}, Lw2/a;->e(Z)V

    :try_start_0
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/a;->b(Landroid/content/Context;)Lw2/a$a;

    move-result-object p1

    iput-object v0, p0, Lg5/g4;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lw2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lg5/g4;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lw2/a$a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lg5/g4;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->l()Lg5/o3;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lg5/g4;->h:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Lw2/a;->e(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lg5/g4;->h:Ljava/lang/String;

    iget-boolean v1, p0, Lg5/g4;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final l()Lg5/h;
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/h;->b(Ljava/lang/String;)Lg5/h;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final o(Z)V
    .locals 3

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->q()Lg5/o3;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lg5/g4;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final q(J)Z
    .locals 3

    iget-object v0, p0, Lg5/g4;->k:Lg5/b4;

    invoke-virtual {v0}, Lg5/b4;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lg5/g4;->o:Lg5/b4;

    invoke-virtual {v0}, Lg5/b4;->a()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r(I)Z
    .locals 3

    invoke-virtual {p0}, Lg5/g4;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lg5/h;->l(II)Z

    move-result p1

    return p1
.end method
