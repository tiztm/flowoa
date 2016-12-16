import com.jsdx.biz.controller.ApiCatchController;
import com.jsdx.biz.entity.ApiHelps;
import org.junit.Test;

/**
 * Created by IDEA
 * User:    tiztm
 * Date:    2016/12/2.
 */
public class catchtest {

    @Test
    public void testYanyi()
    {
        ApiCatchController acc = new ApiCatchController();
        ApiHelps hh = new ApiHelps();
        hh.setName("Resource");
        hh.setNeedTran(true);
        acc.Fanyi(hh);
    }
}
