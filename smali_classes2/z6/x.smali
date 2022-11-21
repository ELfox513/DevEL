.class public final synthetic Lz6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/e;


# instance fields
.field public final synthetic a:Lcom/google/firebase/perf/config/RemoteConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz6/x;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lz6/x;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->b(Lcom/google/firebase/perf/config/RemoteConfigManager;Ljava/lang/Exception;)V

    return-void
.end method
