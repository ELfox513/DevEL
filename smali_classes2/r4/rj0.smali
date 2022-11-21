.class public final synthetic Lr4/rj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/fk0;


# static fields
.field public static final a:Lr4/fk0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/rj0;

    invoke-direct {v0}, Lr4/rj0;-><init>()V

    sput-object v0, Lr4/rj0;->a:Lr4/fk0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr4/xt0;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lr4/xt0;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
