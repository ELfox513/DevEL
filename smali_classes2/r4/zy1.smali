.class public final Lr4/zy1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/w90;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/w90<",
            "Lr4/zy1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr4/dz1;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lr4/rg0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/yy1;

    invoke-direct {v0}, Lr4/yy1;-><init>()V

    sput-object v0, Lr4/zy1;->d:Lr4/w90;

    return-void
.end method

.method public constructor <init>(Lr4/dz1;Lorg/json/JSONObject;Lr4/rg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zy1;->a:Lr4/dz1;

    iput-object p2, p0, Lr4/zy1;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lr4/zy1;->c:Lr4/rg0;

    return-void
.end method
