.class public final synthetic Lr4/lk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nk0;


# instance fields
.field public final a:Lr4/ok0;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lr4/ok0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lk0;->a:Lr4/ok0;

    iput-object p2, p0, Lr4/lk0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/lk0;->a:Lr4/ok0;

    iget-object v1, p0, Lr4/lk0;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2, p3}, Lr4/ok0;->d(Ljava/util/Map;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
