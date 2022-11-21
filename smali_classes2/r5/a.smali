.class public final synthetic Lr5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/h;


# static fields
.field public static final synthetic a:Lr5/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lr5/a;

    invoke-direct {v0}, Lr5/a;-><init>()V

    sput-object v0, Lr5/a;->a:Lr5/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls5/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Ls5/e;)Lq5/a;

    move-result-object p1

    return-object p1
.end method
